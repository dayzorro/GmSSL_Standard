from gmssl import *
import os
import random
import string
from tqdm import tqdm


def generate_random_message(length=None):
    """生成随机明文"""
    if length is None:
        length = random.randint(255, 1000)
    return ''.join(random.choices(string.ascii_letters + string.digits, k=length))

def test_encryption_decryption_loop(loops=10):
    try:
        # 初始化主密钥和用户
        master = Sm9EncMasterKey()
        master.import_public_master_key_pem('./key_Pycpp_gen/kgc_master_public_enc_key.pem')
        
        user1_id = '240000A01000001'
        user1_key = Sm9EncKey(user1_id)
        user1_key.import_encrypted_private_key_info_pem(
            './key_Pycpp_gen/240000A01000001.pem',
            '240000A01000001'
        )
        
        # 循环测试
        success_count = 0
        for i in range(loops):
            test_message = generate_random_message()
            print(f"\n测试 #{i+1}")
            print(f"原始消息: {test_message}")
            
            try:
                # 加密
                plaintext = test_message.encode('utf-8')
                ciphertext = master.encrypt(plaintext, user1_id)
                print(f"密文: {ciphertext.hex()}")
                
                # 解密
                decrypted = user1_key.decrypt(ciphertext)
                decrypted_text = decrypted.decode('utf-8')
                print(f"解密结果: {decrypted_text}")
                
                if decrypted_text == test_message:
                    success_count += 1
                    print("测试成功 ✓")
                else:
                    print("测试失败 ✗")
                    
            except Exception as e:
                print(f"测试出错: {e}")
                
        print(f"\n测试完成: {success_count}/{loops} 成功")
        
    except Exception as e:
        print(f"初始化错误: {e}")

def test_encryption_decryption():
    try:
        # 1. 创建主密钥对象和导入公钥
        master = Sm9EncMasterKey()
        master.import_public_master_key_pem('./key_Pycpp_gen/kgc_master_public_enc_key.pem')
        
        # 2. 初始化两个用户
        user1_id = '240000A01000001'
        user1_key = Sm9EncKey(user1_id)
        user1_key.import_encrypted_private_key_info_pem(
            './key_Pycpp_gen/240000A01000001.pem',
            '240000A01000001'
        )
        
        user2_id = '240001A01000001'
        user2_key = Sm9EncKey(user2_id)
        user2_key.import_encrypted_private_key_info_pem(
            './key_Pycpp_gen/240001A01000001.pem',
            '240001A01000001'
        )
        
        # 3. 测试加密解密
        test_message = "Hello, SM9 Test!"
        print(f"\n原始消息: {test_message}")
        
        # 加密给用户1
        plaintext = test_message.encode('utf-8')
        ciphertext1 = master.encrypt(plaintext, user1_id)
        print(f"\n发送给用户1的密文: {ciphertext1.hex()}")
        
        # 用户1解密
        decrypted1 = user1_key.decrypt(ciphertext1)
        print(f"用户1解密结果: {decrypted1.decode('utf-8')}")
        
        # 加密给用户2
        ciphertext2 = master.encrypt(plaintext, user2_id)
        print(f"\n发送给用户2的密文: {ciphertext2.hex()}")
        
        # 用户2解密
        decrypted2 = user2_key.decrypt(ciphertext2)
        print(f"用户2解密结果: {decrypted2.decode('utf-8')}")
        
    except Exception as e:
        print(f"错误: {e}")
        
def test_encryption_decryption_loop_info():
    try:
        # 初始化计数器
        success_count = 0
        fail_count = 0
        total_tests = 0

        # 初始化密钥
        master = Sm9EncMasterKey()
        master.import_public_master_key_pem('./key_Pycpp_gen/kgc_master_public_enc_key.pem')
        
        user1_id = '240000A01000001'
        user1_key = Sm9EncKey(user1_id)
        user1_key.import_encrypted_private_key_info_pem(
            './key_Pycpp_gen/240000A01000001.pem',
            '240000A01000001'
        )

        # 测试循环
        for i in tqdm(range(10000)):  # 执行10次测试
            total_tests += 1
            try:
                test_message = f"Test message #{i+1}" + generate_random_message()
                print(f"\n测试 #{i+1}")
                print(f"原始消息: {test_message}")
                
                # 加密解密测试
                plaintext = test_message.encode('utf-8')
                ciphertext = master.encrypt(plaintext, user1_id)
                print(f"密文: {ciphertext.hex()}")
                
                decrypted = user1_key.decrypt(ciphertext)
                decrypted_text = decrypted.decode('utf-8')
                print(f"解密结果: {decrypted_text}")
                
                if decrypted_text == test_message:
                    success_count += 1
                    print("✓ 测试成功")
                else:
                    fail_count += 1
                    print("✗ 测试失败")
                    
            except Exception as e:
                fail_count += 1
                print(f"✗ 测试错误: {e}")
        
        # 输出统计结果
        print("\n测试统计:")
        print(f"总测试数: {total_tests}")
        print(f"成功: {success_count}")
        print(f"失败: {fail_count}")
        print(f"成功率: {(success_count/total_tests)*100:.2f}%")
        
    except Exception as e:
        print(f"初始化错误: {e}")
        

if __name__ == "__main__":
    # test_encryption_decryption()
    # 1. 创建主密钥对象
    master = Sm9EncMasterKey()

    # 2. 导入主加密公钥
    master.import_public_master_key_pem('./key_Pycpp_gen/kgc_master_public_enc_key.pem')
    master.print_key()

    # 3. 导入用户加密私钥
    receiver_id = '240001A01000001'
    receiver_key = Sm9EncKey(receiver_id)
    receiver_key.import_encrypted_private_key_info_pem('./key_Pycpp_gen/240001A01000001.pem', '240001A01000001')
    receiver_key.print_key()

    # 4. 转换密文格式
    hex_ciphertext = "84F60C93FBDF1D6C308991B150F0DC45731D2087AD1132CA38F7D42FA78FE8B83805CB7688F817D0B3706261541C553A06049855ACAE43669452974B86858B3320AB9236FA077F2874B66E49D39C6E09F3C4A427B30A519618CA75B9FE82BF2A4465E38FD9E8B253F2"
    ciphertext = bytes.fromhex(hex_ciphertext)

    # 5. 解密
    decrypted = receiver_key.decrypt(ciphertext)
    print("解密结果:", decrypted.decode('utf-8'))
    
    # test_encryption_decryption_loop()
    # test_encryption_decryption_loop_info()