## this is a stripe rod striekr that hacks all payments you do in the selected partition of your email and transfers it to a diffrent api and then pays it with the admin account so you do not have to worry about
echo "--------------------------------"
echo("Welcome to StripeRod! v0.1")
 ## this is a api partition wizard that zaps any money into your wallet
echo "--------------------------------"
echo "Enter the wallet you want to give money to."
read wallet
echo "Enter the amount of money you want to give."
read amount
echo "Enter the api you want to give money to."
strpieaccountkey=$(echo "$wallet" | jq -r '.stripe_account_key')
echo "Enter the api you want to give money to."
printf '{"amount":'$amount',"currency":"usd","source":"'$strpieaccountkey'"}' | curl -s -X POST https://api.stripe.com/v1/charges -d @- -H "Authorization: Bearer $stripekey" | jq -r '.id'
echo "--------------------------------"
echo "Design a prompt that you want to give money to the payment using stripe apis bank"
echo "--------------------------------"
striperipper="$wallet"
echo "--------------------------------"
echo "Enter the amount of money you want to give."
read amount
# finnaly download the api key to your wallet and give the money to the person of your choice
echo "--------------------------------"
echo "Giving money..."
echo "--------------------------------"
walletid=$(echo "$wallet" | jq -r '.id')
## give money to the walletid user with the amount of money you want to give
printf '{"amount":'$amount',"currency":"usd","source":"'$walletid'"}' | curl -s -X POST https://api.stripe.com/v1/charges -d @- -H "Authorization: Bearer $stripekey" | jq -r '.id'
echo "--------------------------------"
print("Done!")