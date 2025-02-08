rule cmd_1
{
    meta:
        description = "This rule 1 for cmd.exe file. Netology task 4.2"
        author = "Egor Zhelobanov"
        date = "08.02.2025"
        version = "1.0"
    strings:
        $hex_string = {4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E 64 6F 77 73 2E 46 69 6C 65 53 79 73 74 65 6D 2E 43 4D 44}
    condition:
        $hex_string
}