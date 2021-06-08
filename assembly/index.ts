// The entry file of your WebAssembly module.
declare function log(n: i32) : void

export function minusOne(n:i32):i32{
	if(n==44){
		log(n)
	}
	return n-1;
}

memory.grow(2); //unit is pages here, 1 page = 64kb
store<u8>(0, 21);
store<u8>(0, 99);


export function readMemory(n:i32) : i32{
	return load<u8>(n)
}
