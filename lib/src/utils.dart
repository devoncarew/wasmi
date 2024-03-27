String hex(int value, [int width = 2]) =>
    '0x${value.toRadixString(16).toUpperCase().padLeft(width, '0')}';
