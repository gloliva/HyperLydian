"""
This module defines the OSC UPD client to converts the StatManager's stats dictionary into an
OSC bundle to be sent over UDP to the Max Application.

Author: Gregg Oliva
"""

# stdlib imports
from typing import Any, Dict, List

# 3rd-party imports
from pythonosc.udp_client import UDPClient
from pythonosc.osc_bundle_builder import OscBundleBuilder, IMMEDIATELY as BUNDLE_BUILD_IMMEDIATELY
from pythonosc.osc_message_builder import OscMessageBuilder

# project imports
from defs import ADDRESS, OUTGOING_PORT


class OSCHandler:
    """
    OSC Client that sends OSC bundles to be read by the MAX application.

    This is a wrapper class around python-osc.
    """
    def __init__(self, address: str, port: int) -> None:
        self.client = UDPClient(address, port)
        self.bundle = {}

    def union_bundle(self, new_bundle: Dict[str, Any]) -> None:
        """Unions the current bundle with a new input bundle"""
        for address, value in new_bundle.items():
            address = self._convert_variable_to_address(address)
            self.bundle[address] = value

    def add_to_bundle(self, address: str, value: Any) -> None:
        """Adds a new address to the current bundle"""
        address = self._convert_variable_to_address(address)
        self.bundle[address] = value

    def send_bundle_subset(self, addresses_to_send: List[str]) -> None:
        """Send a subset of the current bundle over UDP based on a list of addresses to send"""
        addresses_to_send = [
            self._convert_variable_to_address(address)
            for address in addresses_to_send
        ]

        address_map = {}
        for address in addresses_to_send:
            if address not in self.bundle:
                raise ValueError(f'Address "{address}" not in OSC bundle')

            address_map[address] = self.bundle[address]

        self._send_bundle(address_map)

    def send_full_bundle(self) -> None:
        """Send the entire bundle over UDP"""
        self._send_bundle(self.bundle)

    def _send_bundle(self, address_map):
        """Handles some basic type conversion, creates the actual bundle, and then off it goes"""
        bundle_to_send = OscBundleBuilder(BUNDLE_BUILD_IMMEDIATELY)

        for address, value in address_map.items():
            msg = OscMessageBuilder(self._convert_variable_to_address(address))

            # Handle is the message is an iterable
            if isinstance(value, list) or isinstance(value, tuple):
                for v in value:
                    msg.add_arg(v)
            else:
                msg.add_arg(value)

            bundle_to_send.add_content(msg.build())

        self.client.send(bundle_to_send.build())

    @staticmethod
    def _convert_variable_to_address(variable: str) -> str:
        """Converts a Python variable to an OSC address"""
        variable = variable.replace('__', '/')
        if variable[0] != '/':
            variable = '/' + variable

        return variable


osc = OSCHandler(ADDRESS, OUTGOING_PORT)
