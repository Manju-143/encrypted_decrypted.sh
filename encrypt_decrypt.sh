#!/bin/bash

# Encrypt
openssl enc -aes-256-cbc -salt -in /home/Maharjan/systemA_folder/data.txt -out /home/Maharjan/systemA_folder/data.enc -pass file:/home/Maharjan/systemA_folder/symmetric.key

# Sign
openssl dgst -sha256 -sign /home/Maharjan/systemA_folder/privateA.pem /home/Maharjan/systemA_folder/data.enc > /home/Maharjan/systemA_folder/digital_signature.sig

# Send to User B
scp /home/Maharjan/systemA_folder/data.enc Manju@10.0.2.4:/home/Manju/systemB_folder
scp /home/Maharjan/systemA_folder/digital_signature.sig Manju@10.0.2.4:/home/Manju/systemB_folder

