rule cmd_3
{
    meta:
        description = "This rule 3 for cmd.exe file. Netology task 4.2"
        author = "Egor Zhelobanov"
        date = "08.02.2025"
        version = "1.0"
    strings:
        $signature = {4D 5A}
        $text_string = "This program cannot be run in DOS mode" nocase
        $hex_string = {57 FE EB 15 13 9F 85 46 13 9F 85 46 13 9F 85 46}
    condition:
        all of them
}