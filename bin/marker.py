
import re

def marker(text):
    # Patterns to highlight
    patterns = [
    #    r'\b(?:[0-9]{1,3}\.){3}[0-9]{1,3}\b',  # IP address
#        r'\b([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})\b',  # MAC address
        r'dialer=[\S]+',
        r'outbound=[\S]+',
        r'policy=[\S]+',
#        r'sniffed=[\w-]*'
    ]

    for group, pattern in enumerate(patterns, start=1):
        for match in re.finditer(pattern, text):
            yield match.start(), match.end()-1, group

