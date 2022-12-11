# README #

mdcms instance for DIY Accounting.

### Content for https://www.diyaccounting.co.uk ###

# Examples

Access all DIY Accounting content in a docker container:
```shell
$ docker pull ghcr.io/antonycc/diy-accounting-mdcms:main
main: Pulling from antonycc/diy-accounting-mdcms
025c56f98b67: Already exists 
ca9c7f45d396: Already exists 
ed6bd111fc08: Already exists 
e25b13a5f70d: Already exists 
9bbabac55ab6: Already exists 
e5c9ba265ded: Already exists 
16c7b57d4e44: Pull complete 
8cd352472206: Pull complete 
093131d52de4: Pull complete 
4f4fb700ef54: Pull complete 
9ca8e6f84cb0: Pull complete 
Digest: sha256:6c96a895cfb7d59d3cc5398cb2c97ab9e794abe04b7405b1dcbccc8999b37eca
Status: Downloaded newer image for ghcr.io/antonycc/diy-accounting-mdcms:main
ghcr.io/antonycc/diy-accounting-mdcms:main
$ docker run --detach --publish 8091:80 ghcr.io/antonycc/diy-accounting-mdcms:main
e0762805d3416c1ae63d480dffb324fc7602fc9988e3f00c617248a33d0aeb8a
$ curl --include 'http://localhost:8091/content/content.txt' | head -15
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  9923  100  9923    0     0  1218k      0 --:--:-- --:--:-- --:--:-- 4845k
HTTP/1.1 200 OK
Server: nginx/1.23.2
Date: Sun, 11 Dec 2022 00:47:34 GMT
Content-Type: text/plain
Content-Length: 9923
Last-Modified: Sun, 11 Dec 2022 00:39:31 GMT
Connection: keep-alive
ETag: "639526c3-26c3"
Accept-Ranges: bytes

AboutPage.md
AccountingAndBasisPeriodsSelfEmployedBusinessArticle.md
AccountingForProfitWithMarginalCostingArticle.md
AccountingForVATWithMakingTaxDigitalArticle.md
AccountingPeriodOver12MonthsArticle.md
```

# TODO

* Move mdcms libraries to a separate repository on GitHub
* Create a template repository for mdcms instances
* Contribution guidelines
* Ensure index page is well-formed
* Publish content as a JAR file
