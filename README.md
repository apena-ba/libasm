# 🧩 Libasm
This 42 School project is an introduction to the Assembly Language.

The goal is to implement 6 libc functions in ASM (x86) Intel Syntax:
1. **ft_strlen**
2. **ft_strcpy**
3. **ft_strcmp**
4. **ft_write**
5. **ft_read**
6. **ft_strdup**

## ⚙️ Compilation
Clone the repository and use the Makefile to generate the libasm.a file and clean the generated objects

- Clone repo:
```
git clone https://github.com/apena-ba/libasm.git
```

- Generate `libasm.a`:
```
make
```

- Clean `.o` files:
```
make clean
```

- Remove all generated files, including `libasm.a`:

```
make fclean
```

## 🔧 Testing
You should create your own `main.c` and define the functions to use them in your C code. That way you'll be able to compare their bahaviour to the original libc functions.

As for automated testing, I recommend using these two public testers:

[![Bookmark Style Card](https://svg.bookmark.style/api?url=https://github.com/Tripouille/libasmTester)](https://github.com/Tripouille/libasmTester)
[![Bookmark Style Card](https://svg.bookmark.style/api?url=https://github.com/vitoriagalli/42libasm_tester)](https://github.com/vitoriagalli/42libasm_tester)
