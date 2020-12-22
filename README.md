## macos-golink-wrapper

solution to "syscall.Mprotect panic: permission denied" in Golang on macOS Catalina 10.15.x

## How it works

Change the `max_prot` value to `0x7` after linking.

refer to the question:
https://stackoverflow.com/questions/60654834/using-mprotect-to-make-text-segment-writable-on-macos

## Usage

Assuming Go is installed in `/opt/go`

1. Navigate to Path: `/opt/go/pkg/tool/darwin_amd64`
2. Rename file `link` to `original_link`
3. Download [link wrapper](https://github.com/eisenxp/macos-golink-wrapper/blob/main/link) for replacement
4. Make sure link wrapper is executable: `chmod +x link`
5. Enjoy it

## Thanks

Thanks to [Elliott Darfink](https://stackoverflow.com/users/976724/elliott-darfink) for sharing.


## License

[MIT](https://opensource.org/licenses/MIT)
