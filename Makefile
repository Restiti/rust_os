build:
	cargo build
	cargo bootimage

run: build
	qemu-system-x86_64 \
		-drive format=raw,file=target/x86_64-rust_os/debug/bootimage-rust_os.bin

clean:
	cargo clean

debug: build
	qemu-system-x86_64 \
		-drive format=raw,file=target/x86_64-rust_os/debug/bootimage-rust_os.bin \
		-s -S