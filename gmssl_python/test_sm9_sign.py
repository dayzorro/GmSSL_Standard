from gmssl import *


master_key = Sm9SignMasterKey()
master_key.generate_master_key()
print("SM9 master key generated")

master_key.export_encrypted_master_key_info_pem('sign_msk.pem', 'password')
master_key.export_public_master_key_pem('sign_mpk.pem')
print("Export master key and public master key")


master = Sm9SignMasterKey()
master.import_encrypted_master_key_info_pem('sign_msk.pem', 'password')

signer_id = 'Alice'
key = master.extract_key(signer_id)

message = "Message to be signed"

sign = Sm9Signature(DO_SIGN)
sign.update(message.encode('utf-8'))
sig = sign.sign(key)
print(f"Signature: {sig.hex()}")


master_pub = Sm9SignMasterKey()
master_pub.import_public_master_key_pem('sign_mpk.pem')

verify = Sm9Signature(DO_VERIFY)
verify.update(message.encode('utf-8'))
ret = verify.verify(sig, master_pub, signer_id)

print(f"Signature verification result: {ret}")