rule cmd_2
{
    meta:
        description = "This rule 2 for cmd.exe file. Netology task 4.2"
        author = "Egor Zhelobanov"
        date = "08.02.2025"
        version = "1.0"
    strings:
        $xor_string = "This program cannot be run in DOS mode" xor wide ascii
        $hex_string = {67 1E 87 47 12 9F 85 46 52 69 63 68 13 9F 85 46}
    condition:
        all of them
}