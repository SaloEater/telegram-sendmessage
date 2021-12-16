# telegram-sendmessage
A simple and lightweight container to send Telegram messages.

## Environment variables

#### TOKEN
The token of your bot.

#### GROUPS
Chat ids

#### MESSAGE
Message to send

# STARTUP

```
docker run -d --name telegramsendmessage -e TOKEN='' -e GROUP_IDS='1,2,3' -e MESSAGE='' saloeater/telegramsendmessage
```