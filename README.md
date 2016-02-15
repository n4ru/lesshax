![lesshax](http://n4ru.it/3ds/lesshax.png)
## lesshax 1.0b

**lesshax** is a 3DS-9.2 payload based on smealum's ninjhax 2.x that has been modified specifically to boot into Custom Firmware such as rxTools, ReiNAND, or CakesFW. It was designed with three goals in mind:

  - Boot Faster
  - Boot Consistently
  - Boot Silently

Regular payloads are centered around homebrew and created for things like HBL and other projects, as well as tailored for a wide range of firmware. As such, they include homebrew tailored code that users of backups booting into emuNAND from 9.2 through the official firmware rarely use. As a side effect, they have some serious issues booting custom firmware, even through tools like CtrBootManager. **lesshax** is meant to solve that issue by increasing boot times, silencing the debug information, and getting you to your Home Menu as often as possible.

### Features

 - **ninjhax 2.1 base** optimized for 9.2.
 - **Stability** patches.
 - **fs:USER, ns:s, and APT + am:sys modules** for homebrew.
 - **\>90% bootrate** over 100 boot tests.
 - **No debug** text or flashing screens.
 - **Increased boot speeds**.

### Installation

Replace your existing ninjhax 2.x payload with the appropriate **lesshax** version.

### Building
The repo contains the majority of what you need to build the payload, aside from the following:

* **[python 2.7]**
* **[devkitARM]** - Download and `export DEVKITARM=<pathto>/devkitARM`
* **[blowfish_processed.bin]** - place into `scripts` folder.

Once you're set, simply run `build.sh` and you should get six binaries in the `payloads` folder - Two Per Region (old 3ds / new 3ds) and Three Regions total (USA / EUR / JPN).

### Credits

 - smea for original ROP and code.
 - ihaveamac and Mrrraou for the idea of removing debug information and unused services.
 - yellows8, plutoo
###
   [python 2.7]: <https://www.python.org/download/releases/2.7/>
   [devkitARM]: <https://sourceforge.net/projects/devkitpro/files/devkitARM/devkitARM_r45>
   [blowfish_processed.bin]: <https://www.google.com/search?q=blowfish_processed.bin+33f38ab6f0821bc64b6f6bf98c1494f0>



