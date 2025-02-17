# Experience in finding the cause of a fault on Linux.

Version:             9 Beta    
Last Edition:        18/10/2024  
License:             GNU GPL v3    


----------------------

Table of Contents.  


* ## 1. History 

    *  1.1 History installed packages 
    (**only for apt based systems**): 
        *  [1.1.1 From Terminal](DATA/1.1.1.From.Terminal.md)
        *  [1.1.2 From Synaptic](DATA/1.1.2.From.Synaptic.md)  
            ( history of manually installed packages does not exist ) 
    *  [1.2 History of terminal commands](DATA/1.2.History.of.terminal.commands.md)


* ## 2. System and Hardware Information Tools

    * [2.1 Larger Tools](DATA/2.Information.Tools/2.1.Larger.Tools.md)

        * 2.1.1 Inxi
        * 2.1.2 Hardinfo
        * 2.1.3 Fastfetch

    * [2.2.1 Smaller: For Hardware](DATA/2.Information.Tools/2.2.1.Smaller.For.Hardware.md)

        * 2.2.1.1 Bios / UEFI ( DMI table - dmidecode )
        * 2.2.1.2 Hard Drive ( lsblk )
        * 2.2.1.3 RAM Memory ( DMI table - dmidecode )
        * 2.2.1.4 PCI Devices ( lspci )
        * 2.2.1.5 Procesor ( lscpu )
        * 2.2.1.6 SATA / IDE ( hdparm )
        * 2.2.1.7 Sensors ( sensors )
        * 2.2.1.8 USB Devices ( lsusb )


    * [2.2.2 Smaller: For System](DATA/2.Information.Tools/2.2.2.Smaller.For.System.md)

        * 2.2.2.1 Available RAM Memory
        * 2.2.2.2 File System / Partitions ( lsblk - gparted )
        * 2.2.2.3 Files ( df - lsof )
        * 2.2.2.4 Kernel ( uname )
        * 2.2.2.5 Mount a Filesystem ( mount )
        * 2.2.2.6 Network ( ip ) / Open Ports ( lsof )
        * 2.2.2.7 Running Processes ( ps -aux )
        * 2.2.2.8 Sound Server ( /dev/snd/* )
        * 2.2.2.9 System ( /etc/*release )
        * 2.2.2.10 Task Schedule ( Cron / Systemd Timer )
        * 2.2.2.11 Users ( last )


* ## [3. Monitoring Tools](DATA/3.Monitoring.Tools.md)

    * 3.1 System monitor / Task Manager
    * 3.2 Netdata
    * 3.3 Conky
    * 3.4 GNU Krell Monitors
    * 3.5 GSmartControl


* ## [4. Diagnostic Tools for Hardware](DATA/4.Diagnostic.Tools.md)

    * 4.1 Single Tools
        * 4.1.1 Hard Drive ( smartmontools, GSmartControl )
        * 4.1.2 RAM Memory ( Memtest86, Memtest86+ )
        * 4.1.3 Network

    * 4.2 Tool Kit
        * 4.2.1 Ultimate Boot CD / UBCD 
        * 4.2.2 Sometimes tools are in BIOS / UEFI


* ## [5. How to Debug Apps](DATA/5.How.Debug.Apps.md)

    *  5.1 Run from Terminal
    *  5.2 Run from new user account
    *  5.3 Run with default language
    *  5.4 How to use strace command
    *  5.5 How search help inside system
    *  6.6 Just information:


* ## 6. Introduction to System Logs
    *  [6.1 System Logs](DATA/6.1.System.logs.md)
        * 6.1.1 Init
        * 6.1.2 Systemd
    * [6.2 Desktop Environment](DATA/6.2.Desktop.Environment.md)
        * 6.2.1 File Log
        * 6.2.2 Old configuration files
    * [6.3 Graphics Card](DATA/6.3.Graphics.Card.md)
        * 1.3.1 Possible drivers
        * 1.3.2 Log location
        * 1.3.3 Check which driver you have
        * 1.3.4 Additional information
            * 1.3.4.1 Linux Hybrid Graphics
            * 1.3.4.2 Bios
        * 1.3.5 Tips
            * 1.3.5.1 Black screen after system installation
            * 1.3.5.2 You do not see errors at startup
            * 1.3.5.3 Recovery mode in GRUB menu
            * 1.3.5.4 Screen tearing
    * [6.4 Computer Monitor](DATA/6.4.Computer.Monitor.md)
         * 1.4.1 EDID
         * 1.4.2 HiDPi Scaling
    * [6.5 Kernel ACPI](DATA/6.5.kernel.ACPI.md)


* ## 7. Get errors from system logs
    * [7.1 Info](DATA/7.1.Info.md)
    * [7.2 ~/.xsession-errors](DATA/7.2.xsession.errors.md)
    * [7.3 /var/log/Xorg.0.log](DATA/7.3.Xorg.0.log.md)
    * [7.4 Syslog or Rsyslog](DATA/7.4.Syslog.md)
    * [7.5 journalctl](DATA/7.5.journalctl.md)
        * 2.5.1 List of logs
        * 2.5.2  Filtering output for critical errors
        * 2.5.3  Limit the output to a specific time range
    * [7.6 Processing and Comparing Logs](DATA/7.6.Processing.and.comparing.logs.md)


* ## [8. Compressing Logs](DATA/8.Compressing.logs.md)
    * 8.1 Text file
    * 8.2 Output of journalctl
        * 8.2.1 Compression method to zip file.
        * 8.2.2 Compression method to .xz file.


* ## 9. How to find a solution? 
    * [9.1 Find the Package Name](DATA/)
    * [9.2 Find on the Internet](DATA/)
    * [9.3 Find Bug Tracking Place](DATA/9.3.Find.bug.tracking.place.md)
        * [9.3.1 Example other bug tracking places](DATA/9.3.1.Example.bug.tracking.places.md)


* ## [10. Useful Links](DATA/10.Useful.links.md)
    * 10.1 Diagnosing Problems
    * 10.2 Documentation
    * 10.3 Linux Wiki
    * 10.4 Other
    * 10.5 Books


* ## [11. How to Develop It](DATA/11.How.to.develop.it.md)

    * 11.1 Help develop it.
    * 11.2 Time format.
    * 11.3 How this tutorial was built.


--------------------------

