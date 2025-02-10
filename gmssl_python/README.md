# Gmssl python库
在开源库[GmSSL](https://github.com/guanzhi/GmSSL)和[GmSSL-Python](https://github.com/GmSSL/GmSSL-Python)上进行二次开发，兼容船名牌芯片的SM9加解密算法和签名算法。
## 兼容部分
新开发gmssl C语言库的兼容函数都以`_ship_id`作为函数名结尾，原库的函数保持不变，可以正常使用
### 加解密
1. 原Gmssl SM9算法流程内哈希算法是SM3_HMAC，更新为兼容船名牌的SM3
2. 原Gmssl SM9算法流程的密文编解码为DER编码，更新为兼容船名牌的`C1 || C3 || C2`的拼接方式
3. 原Gmssl SM9算法流程限制了明文长度最大为255，更新为动态分配内存对不同长度的明文进行兼容
### 签名
1. 原Gmssl SM9算法的编解码为DER编码，更新为船名牌的`h || S`的拼接方式
## 安装
### 编译安装Gmssl C库
GmSSL 采用了cmake构建系统。下载源代码后，进入源码目录，执行：
```shell
mkdir build
cd build
cmake ..
make
make test
sudo make install
```
### gmssl python库的使用
以ctypes方式实现的Python语言绑定，在`gmssl.py`中有具体的实现方法，兼容船名牌芯片进行的调整


#### `Sm9EncKey`

用户加密密钥的导入，导出，打印，解密

#### `Sm9EncMasterKey`

加密主密钥的生成，导入，导出，打印，加密

#### `Sm9SignKey`

用户签名密钥导入，导出，打印

#### `Sm9SignMasterKey`

用户签名主密钥的生成，导入，导出，打印

#### `Sm9Signature`

签名、验签

### example
`test_sm9.py`: 加密和解密的使用和测试样例

`test_sign.py`: 签名和验签的使用和测试样例

`test_sm9_read_key.py`: 从HEX字符串读取加密和签名的密钥，并打印出来测试和使用样例

【注】：

从HEX读取密钥时，大于64个字符的点，需要每64个字符加一个`\n`符号，这部分未与芯片进行密钥读取合法性联调验证。