# README #

mdcms instance for DIY Accounting.

### Content for https://www.diyaccounting.co.uk ###

# Examples

Access all DIY Accounting content in a docker container:
```shell
$ docker pull ghcr.io/antonycc/diy-accounting-mdcms:main
$ docker run --dettach --publish 8091:80 ghcr.io/antonycc/diy-accounting-mdcms:main
$ curl --include 'http://localhost:8081/content/content.txt' | head -15
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
