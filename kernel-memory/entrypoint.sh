#!/bin/sh

if [ -z "${OpenAIApiKey}" ]; then
    echo "OpenAIApiKey environment variable is not set."
    exit 1
fi

FILE=appsettings.json

sed -i "s/\"APIKey\": \"APIKey\"/\"APIKey\": \"$OpenAIApiKey\"/g" "$FILE"
dotnet run