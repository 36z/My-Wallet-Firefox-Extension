#!/bin/bash          

cd ..

./minify.sh

cd 'My-Wallet-Firefox-Extension'

EXTENSION_DATA_DIR="./extension/resources/blockchain/data"

WEB_CONTENT="../website/WebContent"
DOWNLOAD_HTML=false;
RESOURCE_DIR="$WEB_CONTENT/Resources"
HTML_DIR="$EXTENSION_DATA_DIR"

if $DOWNLOAD_HTML ; then
	array=( fr da de ko hi th it nl es ja pl pt sv ru en el zh-cn ro bg vi id tr sl no hu )
	for i in "${array[@]}"
	do
		echo $i
		wget --no-check-certificate -O "$HTML_DIR/$i.html" "http://blockchain.info/$i/wallet/extension-template?resource_relative=true&enable_partners=false&type=firefox"
	done
fi

#Copy Favicon
cp $WEB_CONTENT/favicon.ico $EXTENSION_DATA_DIR/

#copy bootstrap css img
rm -r $EXTENSION_DATA_DIR/img/
mkdir $EXTENSION_DATA_DIR/img/
cp $WEB_CONTENT/img/glyphicons-halflings.png $EXTENSION_DATA_DIR/img/

#Copy Resources
rm -r  $EXTENSION_DATA_DIR/Resources/
mkdir  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/bug-16.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/facebook.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/facebook14.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/bitcoin-wallet-app.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/app-store.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/logo_firefox.png  $EXTENSION_DATA_DIR/Resources/logo_new.png
cp $RESOURCE_DIR/advanced.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/chart_bar.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/ajax-loader.gif  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/Remove.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/external.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/add.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/note.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/refresh.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/arrow_right_red.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/arrow_right_green.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/info.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/unarchive.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/delete.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/paste.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/dice.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/up_green.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/satoshi_dice.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/down_red.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/cash_deposit_large.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/network.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/logout.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/logout-orange.png $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/logout-red.png $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/sms.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/twitter.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/twitter-200.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/email.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/android.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/qrcode.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/anon-man.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/phone.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/note_grey.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/beep.wav  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/yubikey_16.gif  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/email_16.gif  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/sms_16.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/google_16.png  $EXTENSION_DATA_DIR/Resources/

#Sharedcoin
cp $RESOURCE_DIR/sharedcoin_logo_circle.png $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/loading-large.gif $EXTENSION_DATA_DIR/Resources/

cp $RESOURCE_DIR/bootstrap-responsive.min.css  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/bootstrap.min.css  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/print.css  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/overrides.css  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/app-overrides.css  $EXTENSION_DATA_DIR/Resources/

#flags
mkdir  $EXTENSION_DATA_DIR/Resources/flags/
cp $RESOURCE_DIR/flags/us.png  $EXTENSION_DATA_DIR/Resources/flags/
cp $RESOURCE_DIR/flags/gb.png  $EXTENSION_DATA_DIR/Resources/flags/
cp $RESOURCE_DIR/flags/eu.png  $EXTENSION_DATA_DIR/Resources/flags/

#wallet resource
mkdir  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/shared.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/bitcoinjs.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/wallet.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/signer.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/llqrcode.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/jquery.qrcode.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/qr.code.reader.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/import-export.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/account.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/frame-modal.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/address_modal.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/jquery.min.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/bootstrap.min.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/blockchainapi.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/firefox.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/country_codes.html  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/shared-addresses.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/dicegames.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/mnemonic.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/jsuri-1.1.1.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/paper-wallet.js  $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/jspdf.js $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/mnemonic_words_v3.html $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/filesaver.js $EXTENSION_DATA_DIR/Resources/wallet/
cp $RESOURCE_DIR/wallet/sharedcoin.js $EXTENSION_DATA_DIR/Resources/wallet/
cp "$RESOURCE_DIR/wallet/poll-for-session-guid.js" $EXTENSION_DATA_DIR/Resources/wallet/

#icons
cp $RESOURCE_DIR/cube48.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/cube64.png  $EXTENSION_DATA_DIR/Resources/
cp $RESOURCE_DIR/cube128.png  $EXTENSION_DATA_DIR/Resources/

cd extension

zip -r ./Extension.zip *  -x "*/\.*"

mv ./Extension.zip ../blockchain.xpi

cd ..