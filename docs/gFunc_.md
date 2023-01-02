# `gFunc_*`
<!-- 暂未完成 -->
## `gFunc_getAbsoluteStdioFileSize(arg1)`  
>　返回 `arg1` 所指**文件**的大小，以字节数表示。  
> - `arg1`:`{string}` 文件路径  
> 如果 `arg1` 不能正确表示一个存在的文件，如类型错误、所指文件不存在，返回 `0` 。  

## `gFunc_getmd5(arg1)`
> 返回 `arg1` 原数据的 md5 值和原数据。  
> - `arg1`:`{string | number}` md5 运算的输入  
> - - `{string}`: 原数据将被设为 `arg1` 。  
> - - `{number}`: 原数据将被设为 `arg1` 转化为字符串的结果(等于 `tostring(arg1)`)。  
> - return:`{string}` md5 运算的结果  
> - return:`{string}` 原数据  

## `gFunc_isFileExist(arg1)`
> 返回 `arg1` 所指**文档**是否存在。  
> - `arg1`:`{string}` 文档路径  
> - return:`{boolean}` 存在返回 'true' ，不存在返回 'false'  

## `gFunc_ShowNewUIDemo()`
> 显示新的 UI 实例。  
