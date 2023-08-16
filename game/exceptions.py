"""
This lightweight module defines custom exceptions. We don't need to override anything
from the Exceptions module, but we want to be able to raise or check for specific exceptions related
to the game.

Author: Gregg Oliva
"""

class QuitOnLoadError(Exception):
    pass

class AssetLoadError(Exception):
    pass


class SpecialEventError(Exception):
    pass


class MenuRenderingError(Exception):
    pass


class MenuSelectionError(Exception):
    pass
