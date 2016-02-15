#!/bin/sh
python scripts/buildVersion.py "9.2.0-20U"
python scripts/buildVersion.py "N9.2.0-20U"
python scripts/buildVersion.py "9.2.0-20E"
python scripts/buildVersion.py "N9.2.0-20E"
python scripts/buildVersion.py "9.2.0-20J"
python scripts/buildVersion.py "N9.2.0-20J"
mv r/POST5_U_12288_8203.bin payloads/ropbinpayload_menuhax_USA12288_old3ds.bin
mv r/POST5_E_12288_8203.bin payloads/ropbinpayload_menuhax_EUR12288_old3ds.bin
mv r/POST5_J_12288_8203.bin payloads/ropbinpayload_menuhax_JPN12288_old3ds.bin
mv r/N3DS_U_12288_8203.bin payloads/ropbinpayload_menuhax_USA12288_new3ds.bin
mv r/N3DS_E_12288_8203.bin payloads/ropbinpayload_menuhax_EUR12288_new3ds.bin
mv r/N3DS_J_12288_8203.bin payloads/ropbinpayload_menuhax_JPN12288_new3ds.bin
rm -r r