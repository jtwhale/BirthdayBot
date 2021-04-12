#!/bin/bash


echo -e '{
    "BotToken": "'$BOTTOKEN'",
    "LogWebhook": "you can put anything here for now",
    "SqlHost": "'$DBHOST'",
    "SqlDatabase": "'$DBNAME'",
    "SqlUsername": "'$DBUSER'",
    "SqlPassword": "'$DBPASSWORD'"
}' > /app/settings.json;

echo "Invite link for this bot:"
echo "https://discord.com/api/oauth2/authorize?scope=bot&client_id="$BOTTOKEN;

/app/BirthdayBot
