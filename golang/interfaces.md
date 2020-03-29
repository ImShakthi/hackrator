# Interfaces

> Worst things about go is `interface` and best is `interface`.

interfaces have two values -> `type & value`

Pointer -> (*ptr, nil)

Value -> (nil,nil)

----
Function composition
```go
type Reader interface{
    Read([]byte) (int, error)
}

type Writer interface{
    Write([]byte) (int, error)
}
```

```go
type ReadWriter interface{
    Read([]byte) (int, error)
    Write([]byte) (int, error)
}

// OR

type ReadWriter interface{
    Reader
    Writer
}
```