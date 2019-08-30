1. Расскажите, чем отлиwqются команды: "t.sh" ". t.sh" "/t.sh" "./t.sh" .

2. Клиент жалуется на проблемы в работе БД MySQL - простые запросы выполняются медленно. Опишите подробно ваши действия. 

3. На сервере закончилось свободное место, навые файлы не создаются, вы зашли на сервер по SSH, ввели команду df -h и видите что место достаточно. Ваши следующие действия? 

4. Что такое virtualenv?

5. Кусок из конфига nginx. Что тут на первый взгляд неправильно?
map $http_user_agent $set_ios {
    "~*IPod"     "ios=1; path=/; Max-Age=604800";
    "~*IPad"     "ios=1; path=/; Max-Age=604800";
    "~*IPhone"   "ios=1; path=/; Max-Age=604800";
}

map $http_user_agent $set_ios {
    "~*Android"  "ios=1; path=/; Max-Age=604800";
    "~*android"  "ios=1; path=/; Max-Age=604800";
}

map "$set_ios:$cookie_ios" $rewrite_ios {
    "ios=1; path=/; Max-Age=604800:" "/errorpages/ios.html";
}

map "$set_ios:$cookie_ios" $rewrite_ios {
    "ios=1; path=/; Max-Age=604800:" "/errorpages/android.html";
}

6. У вас есть nginx c настроенными vhosts для доменов xxx.test.com и yyy.test.com. При этом в настройках, каждого vhosts указано конкретное имя через директиву server_name. 
В качестве бекенда php-fpm слушает на 127.0.0.1:9000.

В DNS прописано

*.test.com   IN   A  ip.add.re.ss

Что  откроется при переходе на 
    https://xxx.test.com
    http://xxx.test.com
    https://yyy.test.com
    http://yyy.test.com
    https://ggg.test.com
    http://ggg.test.com