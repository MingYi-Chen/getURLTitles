# Generating MarkDown URL Format From Safari Reading List 
---
由于习惯将想要读的网络文章加入至 Safari Reading List。再将该文章汇整归成 MarkDown 文章，便于分享。因此做此流程，快速转出格式。

#### 手动

~~~
1. 展示一则网页于 Safari ，「Cmd + Shift + D」加入至 Reading List
2. 打开 Terminal 
3. 执行 ./readinglisturls.py >> ReadingList.txt(若是权限问题则命令行输入 chmod +x readinglisturls.py)
4. 执行 ./getURLTitles.sh ，输入 「ReadingList.txt」输入 「OutputReadingList.md」
~~~

#### 自动
~~~
命令行执行>>  ./MarkDownFromReadingList.sh
~~~


### 参考
---
* [readinglisturls.py 参考](http://apple.stackexchange.com/questions/96353/how-to-get-reading-list-items-as-links)