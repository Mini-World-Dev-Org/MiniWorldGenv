# `ScriptSupportCtrl`
<!-- 暂未完成 -->
## 函数
- `decrypt(self, content)`  
> 解密 `content` ，已知此解密适用于加密的脚本、触发器文件。  
> - `self`:`table<ScriptSupportCtrl>` `ScriptSupportCtrl`  
> 如果不为 `ScriptSupportCtrl` 则会运行错误。  
> - `content`:`{string | number}` 解密的内容。  
> - - `{string}`: 直接对 `content` 解密。  
> - - `{number}`: 对 `tostring(content)` 解密？  
> - return:`{string | nil}` 解密结果，如果 `content` 不符合密文性质(类型错误或 `content` 与密文性质不同)则返回 `nil`  
- `encrypt(self, content)`  
> 加密 `content` ，与 `decrypt()` 互为逆函数(前提是密文符合密文性质)。  
> - `self`:`table<ScriptSupportCtrl>` `ScriptSupportCtrl`  
> 如果不为 `ScriptSupportCtrl` 则会运行错误。  
> - `content`:`{string | number}` 加密的内容。  
> - - `{string}`: 直接对 `content` 加密。  
> - - `{number}`: 对 `tostring(content)` 解密。  
> - return:`{string | nil}` 加密结果，如果 `content` 类型错误则返回 `nil` 。  
