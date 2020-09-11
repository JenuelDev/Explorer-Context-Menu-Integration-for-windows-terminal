
<img src="https://github.com/MisterJ936/Explorer-Context-Menu-Integration-for-windows-terminal/blob/master/images/icon.png?raw=true" align="right" width="150" />

# Explorer Context Menu Integration for Windows Terminal
By just installing this bat files, will automatically add the options on your Context Menu when right-clicking to a folder or inside a folder.

## Important
You should have installed the Windows Terminal on your system. If you havent installed yet, you can go to this options to download the app:

- [Microsoft Store](https://aka.ms/terminal) - you directly download it on the Microsoft Store.
- [Terminal GitHub](https://github.com/microsoft/terminal#other-install-methods) - you can read more here Other install methods

> 👉 Note: Windows Terminal requires Windows 10 1903 (build 18362) or later

## Step 1
Open Windows Terminal and Open settings. use Command `Ctrl + ,` or by clicking the drop down menu.  

<img src="https://github.com/MisterJ936/Explorer-Context-Menu-Integration-for-windows-terminal/blob/master/images/open%20setting.png?raw=true" />

and then under profile -> default: add `startingDirectory`

```
"profiles": {
     "defaults" : {
          ...
          "startingDirectory": "." //add this
     }
}
```

<img src="https://github.com/MisterJ936/Explorer-Context-Menu-Integration-for-windows-terminal/blob/master/images/add%20startingdirectory.png?raw=true" />

## Step 2
Copy and pase the `terminal` folder to `C:\Users\<username>\AppData\Local`.

## Step 3
Run the `Install.bat` to add registries. And You Done  


# Have a Nise Day! 😄👍👊

### Give me Coffee ☕
[DONATE HERE](https://paypal.me/mrj936)