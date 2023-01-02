# MiniWorldGenv

## 简介

`MiniWorldGenv` 是研究迷你世界的 lua 环境 `genv` 的仓库。  
对 `genv` 的研究都是以正规手段进行的，没有使用逆向操作。  
MiniWorldGenv 使用 GNU GPL 作为许可证，它强制代码开源和免费使用。  

---

## 定义

### MiniExtend
指 [MiniExtend](https://github.com/0-0000/MiniExtend) 开源库，以下引用了其中的两项定义:  
### `_GScriptFenv_`
脚本环境，来自 MiniExtend ，脚本运行时的默认环境就是这个表，该表不像标准的 lua 环境，被内部脚本做了一点点的修改，详见 MiniExtend Core 。  
### `genv`
迷你世界的内部 lua 环境，来自 MiniExtend ， MiniExtend 直接给了你 `genv` 这个 `table` 。  
获得 `genv` 参见 MiniExtend Core 。  
实际上 `genv`, `io` 都不在游戏环境中，但使用 MiniExtend 允许你直接访问它们

### *工作目录*
工作目录在文件系统中使用，它决定了程序使用相对路径时的初始文件夹，通常情况下，迷你世界的工作目录为程序所在目录，例如 `"C:\Users\Administrator\AppData\Roaming\miniworldgameguan110"` 。  
### *文档*
文档是文件和文件夹的统称。  

### *数据目录*
数据目录是游戏存储游戏数据的文件夹，例如 `"C:/Users/Administrator/AppData/Roaming/miniworddata110/"` 。  

### *游戏 API id*
游戏 API id 决定了工作目录和数据目录，例如根据上面的工作目录和数据目录对应的游戏 API id 为 `110` 。  

---

## 现有成果

- *src/formatenv.lua*  
> `formatEnv(env)`  
> 以 2 层深度遍历 `env` 并格式化，返回格式化后的字符串。  
> 根据这个仓库的意义可知 `formatEnv(genv);` 是正常的使用方式。  
> 返回的字符串会很大(大约 2733kb)，必须将格式化后的结果输出到文件而不是日志，否则。  
- *docs/*  
> 记录 `genv` 中的一些值的意义。  

---

## 开发

确定 `genv` 中的值(如 `ScriptSupportVariable`)的意义，然后在文档中记录。  
