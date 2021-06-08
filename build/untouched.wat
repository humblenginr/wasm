(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (import "index" "log" (func $assembly/index/log (param i32)))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "minusOne" (func $assembly/index/minusOne))
 (export "readMemory" (func $assembly/index/readMemory))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:assembly/index
  i32.const 2
  memory.grow
  drop
  i32.const 0
  i32.const 21
  i32.store8
  i32.const 0
  i32.const 99
  i32.store8
 )
 (func $assembly/index/minusOne (param $0 i32) (result i32)
  local.get $0
  i32.const 44
  i32.eq
  if
   local.get $0
   call $assembly/index/log
  end
  local.get $0
  i32.const 1
  i32.sub
 )
 (func $assembly/index/readMemory (param $0 i32) (result i32)
  local.get $0
  i32.load8_u
 )
 (func $~start
  call $start:assembly/index
 )
)
