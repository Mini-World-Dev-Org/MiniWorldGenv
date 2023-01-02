# `ClientMgr`
<!-- 暂未完成 -->
## 变量
- `origin`:`userdata`  
意义不明。  

## 函数
- `clickCopy(self, content)`  
> **元表控制访问**  
> 设置粘贴板的内容为 `content` 。  
> - `self`:`{?}` 意义不明  
> - `content`:`{string | number}` 设置的内容  
> - - `{string}`: 直接将粘贴板的内容设为 `content` 。  
> - - `{number}`: 将粘贴板的内容设为 `tostring(content)` 。  
> - - `{other}`: 不做任何有意义的事。  
- `gotoGame(self, status_str)`  
> **元表控制访问**  
> 设置游戏状态为 `status_str` ，已知可回到主菜单。  
> - `self`:`{?}` 意义不明  
> - `status_str`:`{string}` 控制函数行为  
> - - `"MainMenuStage"`: 回到主菜单。  
> - - `{other}`: 意义不明。  
