# カタログ課題3「＠local」
AWAKE研修 <br>
4月からruby, rails, javascriptを1ヶ月間学び、5月からテーマに沿ったアプリ開発を要件定義から実装まで行いました。 <br>

## アプリ概要
今回のテーマ: 「受発注管理」 <br>
開発期間約3週間 <br>

地方の小売店向けのショッピングアプリです。詳しくはカタログ設計を見てください。

## 環境
* Ruby 3.0.1
* Rails 6.0.3

## 実行手順
1. 任意のディレクトリにgit cloneする
```
$ git clone git@github.com:erikoenuma/at_local.git
```
2. ディレクトリに移動
```
$ cd at_local
```
3. 以下のコマンドを実行
```
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails db:seed
```
4. サーバーを起動
```
$ rails s
```
5. 以下のURLにアクセスする
```
$ http://localhost:3000/
```

## 要件定義

### [カタログ設計](https://docs.google.com/spreadsheets/d/12or5W8oMzO0VejHyRHi-Zur1807vD2Y2TI8X0lFZS9s/edit?usp=sharing)
### [テーブル定義書](https://docs.google.com/spreadsheets/d/12or5W8oMzO0VejHyRHi-Zur1807vD2Y2TI8X0lFZS9s/edit?usp=sharing)
### [ワイヤーフレーム](https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=%E3%82%AB%E3%82%BF%E3%83%AD%E3%82%B0%E8%AA%B2%E9%A1%8C3_%E3%83%AF%E3%82%A4%E3%83%A4%E3%83%BC%E3%83%95%E3%83%AC%E3%83%BC%E3%83%A0#R7X1vd%2Bo4kven4WU4lmTJ0kuThOlnt2f3nu6Znt1Xc0hCErZJSBNu33v70z%2BSbBlbKoMBWxis9D0zYIgh9asq1f8akdu3739bzz5e%2F756mi9HOHr6PiJ3I4xJxJD8P3XlR3YlpiLKrrysF0%2FZNbS98Ovir3l%2B0bzt6%2BJp%2Fll542a1Wm4WH9WLj6v39%2FnjJruW%2F%2B5svV59%2B6xcel4tq5%2F6MXuZOxd%2BfZwt3av%2FWjxtXrOrHCfb6z%2FNFy%2Bv%2BScjxET2ytvMvDn%2F6M%2FX2dPqW%2Bmu5H5Ebter1SZ79Pb9dr5U1DN0yX5vWvNq8cXW8%2FdNk19YJKv%2F%2Br%2Bf%2Fvn73%2F77b9Nf776gf%2F7tr19vcESy%2B%2Fw5W37N%2F%2BT8625%2BGBp8e11s5r9%2BzB7V828S6BGZvG7elvIZkg%2BfF8vl7Wq5Wsvn76t3%2BaaJ%2B93yr%2FvnfL2Zf7eJINlnvnqbb9Y%2F5FvyVznNfiNnHBznZPxWQsFcey0hkCQG%2FRz5l%2BLWW%2BLIBzl9DqBVQntKKsGjCq1umlOLdUYt1FNi3fCoh9TCLrXuyYjjUcr1AzJKU3NFvsRGaTwSt6P7ZDSJ9ZXpaHI74vLNdCQlZ4JG92Ik2UKk6j0iHk0m6oq4K71ZOIBIEm6qGHxu1qvf5waFESZP7IFRZqEjrz8%2FP%2BPHR3l9tly8vMtrjxKiuXxxoqBZSIWa5i%2B8LZ6e1AdOIPjXq6%2FvT3NFqUh9xup982v%2B9QB9dzj2iUAW9oRwB3scAdiTztQKAL1QiE%2Fu9AM0EkTBOklzxOX%2F8tucGQTO3zPhiiu4fM%2F9wbDmwgXIW%2BtgZuc7Yi3JcqHsCzyRcGUZxJN2pvjYfs0nbYEP9XAze9DUK0EDEfJzM1sb2ilSSmNnM1u8K0T07zyulsvZx%2BdC3yx7x%2Bti%2BfTz7Mfq68Z8jHnWDRDMAQJQqgmkVCnqDAlAtHYi8Yuyzyavq%2FXiL0XhZU5Mm%2Fyf3xZvy9m7NPxmT9alyUpbuurSZvWRP1rOnzf5w4fVZrN6y5%2BscyJEIIRP69XHP2brl7l5CyCfH6vF%2B0aTjU7kP0nI22hMR1T%2BZbfyOdo%2Bl%2F%2FU29eb29W7lH7JPeq289nn5tv8sxlX7Ob2%2FbyyjxGI6IoPOMAHbKn%2B6s%2BP2XuFIdgfX5VBPqk8etH%2Fr47W25FIlKKdSH2cbNVzfjf57bIb5r9Rx2ySqpvFbPmLdFhm7y9NNEDu3sy27GGdv0%2BzOX9%2BPJjtVhK356V2S16lKp%2B%2FA5xgDoHsfpPl7GG%2BnMwef3%2FR%2Bt3iSMdgYI98%2FvB8AEMlXhgqv9sWgsNvN1vKM%2FF9tpFCL%2Bnw6bBp8U1PMAsbWNFBg3nTYD%2BqjLCPYeKuFJrhgiZs0bauyXFrX800hOsA4%2BQUfI7QD%2FbtfOiHBiGJoB986wfuupQww3QWTQBcEGm0SO9fBQaMGXOV1snJ9kchUi3olx34HqNfrNt50C8m6BHUyRnVCcIN9Qntyt4g6PLNC0tPNETLCEAL2mAXOkdoA%2Ft2PrRBMC56oA140kwbdBZOIUDKUOUWWJ6ayMyMYF3sEqEQ3VDEiIM%2BObs%2BwcZZ2Hvg8K70CR2sdRG3Z13sQOcY68K6nQ9twII2OL824PG5rQsoH56VMMgH8n%2BnoxSN7vlootPd26SMtECESoMPVZf4ScRdiGVRzwZBl3hLk2DSTJfEqCtdIgBdUsRBTRZ3qAqDNwb0FACPCXRat%2FOgMOIQ6OyBwmDnNj5iIN%2B%2BDW3wUUqV%2FTFQhRG3Fwu9fAsjDrHQ8yuMOGpoYXSnMKBYaKzckPRO%2BSZiosp4h6owQrCzRIwQ7OyBwjAseT6FAVTsZHpCTILCaC8eevkKwyR4g8I4p8LgqJnCwF0pDNNYYVsYupnrXgcwxH3eI6aavJiKk0qHRbWG8RGvP3WuXJcY8WlBl%2BzC9ghdYt%2FOR50oFAjb0c5gscwVN5AZgIq%2BpQhoIBPQidBV8Wa8s3gzVn2A6e22RXBAWFELKySic2MFN29KrETWpUtG6f22Z3M4WDGnHzA6O1ZAF5g6P%2FEoFbp3VkrUZIhYUaeJ9vxYQedVMkoTA5FUg9EQsYqdUQ9nx4pCBqoeQZA1G0yymQPDw4r0ECsovyHlSmq%2FqcaKqLKKAWKFe4gVBrCiyp5QJgUdiemID9K2AGz2s2MFpQESlS4UGiv5IJvNorz1uyGCxmwj4%2FzGO40B0LRcTfScFSld0iYcIFbUVoY9wAoOm%2FM75QXf85FAQ8XKpEB7hBUUwOAKllQPKRLZg%2BFhFWPaO6ygAAYbpZGWqwFjRUj%2FsIICGMlocq%2BGwd0LZcWnt0PECvcvMMgAR8sG5DyzIns4%2FJBBns6O6Ydh8h1G2Mbx%2FIPvWINRslvC1CUZS1jtnjTlh6rQFLsEpGpnZIXclEvLBx0GZdtzP5E7JhI4IJjXAwJyaJhK3KvAtg7zTKaltL483icjwUvB7%2BLAp8pcm8SlN%2BtxrynRVyI1D7aw5K6BOzphiAgQ9AJ9PxwB532lkEt4Ve051smPAuRE1Yrl2UVxLZLfDbaAsCO%2F2MJulrJetHCmUyXVSpKnVbEvJFlrBMFLmZXye7Jy44IjhLoucOk9enwwz%2BYIR8plKGsW%2BVL%2BHq7fU%2FotqTvUnTP1cRv0iM1rbqSMubxG%2FJ4skJvINLYT3Tcb6VqfEv55uYLLWVy12qbZUPGpMrq386jLPHKvYqbFmRVYo441MHDEYK%2BsAaXVCySdBwHJ7FXbZ0acnxvJBErkBiQPRxIy%2B%2FwiWRP8CEgeiCQ6O5JQEjggeTCSyfm1KxRyCUgejiQ9O5KQU50orytvmsB6iAxXLtEkW6qC%2BmvEdgEacTICUCQZIQC1ziLJSU27AlORjizBJVyMeh5bjhxCRwkgHlDIvvAlWqe0ufFVUZqgPlIastgvndKUuJSmZ6c0ZFFj1emkAiDFgyy4NTHx0%2Fs8AMLDeb5DYwHRLfBo6OxA55CRrRses3Vp6Z3eeZetS3NnOw0VSuJkNiEoocRmd0hCRnYmnYmuF0tNA0EQyrLKdaufz42k6O0O2WgclX6wXSpJhDtwynPti4CLkDPtpaSA5w9SobozsoWfk6in4tABw%2B%2FDMKYuhshr3YuoSeXXFGjkSXmd5Rfa39z2BbjJXTeVp2%2BYZQtVUuauVBJQ%2FvWiQ06%2Ff0c51WVwUuslIRGmY6vEE%2FR8iemd98NLDZaHnkWVIu6k1XtQOSjgYcF7wzvuAuXLkIJWgHRLQIHQOaJeVSjcmy20f1w%2BDlOkH8iXIq36NKBpcjGAniEoawIPWy0H5KFBuDszGFFUk77Eupo3O6KKIgPzIA1OwBZUbB9eYHmBb1ihyEtm7iSlB%2FWCHfDNAmbIiav1QWhr8psB3QPRxW45cg%2FQrcl5BnQPRDd2sg99QBfKgwZ029DMEVCu4BtdyA0K6LahmfuALuQcBXTb0Mx9QLemJjege7pmBgJUntFFkKPLdVzKHe87WOQod71Z5K45BQczdwcdYBDbiD3NPl%2BrhPuy%2BlxsFitF83zOrbNDNJ%2B%2F%2B%2Fb9RZL%2Fdfzy9rQcP77OH39%2FWH13MB9hMonUfzDw2Zv%2FldMIq0%2F7%2FJg%2FKuI8L76rrzb5%2FH2%2BeXw9H7hOvhIhd2uDmcxcqRBhnUELZGwCtC1AC9VZeYa2QQIlQHsMtOTsUgt4OQHag6F1Rx32QCEDLk6AtgVoo%2BTs0AL%2BTYD2YGhjdzTJ2aXWfKUAbcvQnl9qMeC3BmiPMKOAPC1UbeEVXHDFtlBhJjVQmKuyMtHX%2BXFnOFQJhOG5oxMkWEytgItYHwUUigmb3oYglxl0JOpj1DAONlErcin6eHCC66FNp0qQy1wuodq088slDnLZBrisj%2BcluIWZqUJgPslnlvG7IKA5hnFMGgmomRblSUBDuq0VcHHSRwGFW6T2lOz3u%2FkdRya5v3OaVJFHLlPa0KMDSkOFfgeMGYh6SOnW2jiL2TMd0L1pCd6VDh3AqB2sUbQHbAT1e8ITuTvDGu5WuuhRHpLwu%2BkeCSAmDQ3RLTI%2B7RO%2BZiXaRRM%2BJrRK%2BD7SHbKvL5zujF0A3SGzSfdzT9LtUN5%2BnhydRIXoTh0lEuBo8Dq4DIG7r%2FQM7VQPb0inuvM%2Fa1s1U7gF3XY45j2Pt%2FkDHpu%2BSPNSMaCb93UKdxdKErGxWrFRI6wg8KxwhDxBD1mAO6B3Em4BaKWV8ZjWa2UQaOIX5qs0%2Fiyq24oVQ2T3fBbW9EkgvRUhG%2FVA8ivcjHoo1Oegjsk9pjyP3BF9noWIAVmySxeiPYZ8H2QI2kqXnzqFCSLMqRP1vRSkEwx3Hj99kBzIBc503V3Vriz2dASbYqdg9gHUq%2FSvk52WXB%2FUYYOU03mWdO6JTfRgbiECF9iVulTz0XbDHVwokmgniOcfXIjAlXMhaXFM0mI31oSdPWkBrqDLhFLke%2BbyYgmmQL9wZFvzpfhOgxAVZQvlugkw8NRd5QS48C1Wo0a5nnTIhQk8Rfm0UTUtm%2BkEfLHeT%2BTr3eRLwrjR%2BZRQpFR44IcMxQSNsV1fATGB6mlP%2FLIBFCC5cCMSRXsOUYywQ3pwbSsyIybbJ3wCBzOuOPDr%2F4AldA8fQIFhvwcsuMiNqQkt6e1%2B9AXexQb5r0%2BMY5%2BYUbb39hUxNZpefhe2VMzysJaPXtQjpD8%2BGmUPKqo%2BQaXMYjFVVSgWzm%2BJtKFQDjVgE2jNNhNnf9m09OvZNxKlb3TZ7NzeOga7pKmJWoO2yBa1KB3wc4Op%2Fj0%2FPWKxm8wRcHALgMpxd0oDHv%2BvpOXivav2Vl7skZaInN8IT6BwSDZi303qlxV65lxTQKFemrDtRklALjA0jIt1h1GDnsmzxPtuEmGVElNgp4vvCB%2B4ha%2BepfuprTrgdBctBg149RvKAxf5MRV5VUs%2FTFTnUsKx53AwKpBiaAemX38CWhhoo2WaWzazB03ZEmwQkT83s7WhnCLzoyTkbPGu0NK%2F87haLmcfnwt9s%2Bwdr4vl08%2BzH6uvG%2FMx5tk5Oi6qIMWRCxKFjpSiCLADlACvbydKv6y%2BKaBW68VfivrLnNA2NJ%2FfFm%2FL2fv8p%2Fnsybo0WT39yC9tVh9GYnS3k374sNpsVm%2F5k7wrKofbhvdpvfr4x2z9MjdvAeT6Y7V432i60Yn8Jyl5G0nbisq%2F7FY%2BR9vn8p96%2B3pzu3qXWkNylrrtfPa5%2BTb%2FbINj9gjKfkbaxyjd2Yfg3sLSAqhsn0kd50gibBaz5S%2Fzx83s%2FaWJqEvRflfv3mINQHsY%2B6wkgZ%2BXin3vXqUqn793hyg%2BBlFs2kCbIprfbUvVw283W8qz7n22kUIp%2F%2FxPh0%2BKb3oK69T4iHe68i1WQaDUbT8PrNO4ZRIo9DfeSzus1Oh2PlgJWi9WhBuUlUghmzCwUtPsUAyUEl0rK8HpJsk%2BKgTMldsBOIWBlZpWIsZuQ36xgactVurLAddgZm%2BwoftiQ%2F%2BoMso%2Bk7q72Dn32HAzVL3FGrPFPst5Fx8cYYjbt%2FOip9z4MY2CuXQ4rxxqeR%2FPO41u58VccpVV%2FSEXOKctQ%2FvyOQdHbmRf1ZsG5jmWeRqb1qcwT0%2BOLOEyTzCt%2B25aA0tUPJvWAsg9tdNlNlAtVchhMKQVNdykGQkn2hG8MkRD2nXCQvLjaM4ZlCHtHmpB65zAO4Oyo5tuR7%2FSTsmuSngIdW1dqAK7u8IM4RbuqqBe1jllnMsAHKK7JzOB8%2FI8F2Fj86XsIptIl1wXOckIkYCwO7AhroomhYYZY5%2ByiaMGAxqGVQJ5w%2Bza4xgY7k0gFdpdEWSh1EOU6VxRpq2oHBRgABmlQ3mGy49CEeROoToI0aINtaUakSa38%2BK8wcn%2BUAR5Iut8t3AuYZ%2B0Wm3U5G5eGKlmfmcogWyFkTAQUGpXJfVGI4UCyC4ZiQAbia5TIxm7PFjPl2A915c%2FgsZ0ZzlajKAcbSh%2FbJMtUPOY%2BD6b%2BYQYeJPbedFTbnQtlD8ewysH2tzHs06Tu3nhHLf5sf6IC3zTkol9At%2F0ReO48d9Q%2BngK6zQ1qq9A5YSQ9OUZ1UDho2%2BjumYicih8PFZHtRfFvgYT2o1ihxKkY3hleCZ0KHtskW8GZEK7UeqgcU7gnOFY0KbUp%2BlEyzBarm5cILNKdihQsuN3uNz2zwj1rCeCG9n1WOeuaMX4ANd38TZ7sZS8TX6tu4urPysKf1l9LjaLlXrVKPE60o8wedY%2F8i36w9LPD6n3crxm5snz4rsCcZJ%2Fn7vXzeZDEiZVpMDTx6f3eLyQJ83zQoK9Hj%2FKT8TTp9lmJv9PXZcacKoIaB4TRUOWYBKjm816obXszdPq2%2FsNwnz88f7SETcQuzqPmK0M5TYsgBtwd9xwwHCVwA0dcwOQNfTMDXAZVaiQbggorgKKOXCS%2B62RJvWtuqmuZ4pVJjhbA6QWjetRwGqTgx4ObLofArg3jPOxvdkHmOvs9ywnGEBXb9nIjDFxqyztLbpm67ENanV2fBk7qZKnaIqncR3Q5ennkuyl36OCJTwqAZ85dxV0sLqtBHrx%2FvJz5vohHTP%2Ffb55fG2EdSvYbjtRirWfQMssNGCdkM6wbbBgo0hR5MeWyg0s1vKUzM7bz9VX9eVtQAtg9gF6AAzHutgFBzcP6lWAisZAhyoQXMlPqfV8Odss%2FqyGyHY44V9UFqXEKUbiiyO7eofV8%2FPnfONg34a%2FTWrGvE71cp%2FsATMbhYLarnXAABvLs852Q2440neVPDpVIacICWnNEjdE0u8VH%2FKIZBVaA%2F2%2F0JKi7tJ1MRSj4sqwUaGp8mqVYg%2FVBa5W2W79NtsJzr1KBcc7rU7TyaMQEFBLz1CVVRyR%2FtmYMWRj6jif2hOXKA8CiOb2XGSIa81zBpkSnhVWg2jMWVYQ4YQmVXJRoBrD8woiHEPhCle%2FU1WUoVZn6Q2Gav94xrV6KaG4G6UukfuhgbqYsOAAyQCLCBmh95NuiBts3hpWIzcWwoKJANtsfDdyx0BP006cQtVc2%2F5yISp9buSmkN0dGrn3CFVo5FasA7cthUbuE1lncI3cFHZbQiN3O4w0nEZuCq9mC43c7TDScBq56aHjqoL1fEbruTeN3BRaHR4audtkC3rUdKxr7UKhbhAyNHIfwyuD60KhYYtNi3wznC4UCnQvhUbuE1hnOG0oNISkL8%2BoPn8jN4Mi1KGR%2BwQd1V4U%2BwpMaOZGsUNb5TG8MjgT2pRyhUbuNvhmOCY0c6PUQeOcwDnDsaBZze4apGqk6qpluWn2VvWc2ZVbYzdxc4WV7pM9MFe4uTIpjCyJEFsqI%2FVhLR%2B9qEfOe6aOaRbrL6Z7y7OirvzT8UhUK07lTbj58ikyv56YK6z05urfVfmGljT1o0rMe8s6FmbLWlEMCFSpEr81ZAwKk%2BsmNsUSuq1Ntaxf2xiC9grOuF1wBix48VtGlECz2OuryO%2BnSlGJFKhOlviniaogqdMxDZshtx%2FRpMnO%2Faz6fh1z59pWkB03y9QTKt21UGE7%2FgKhFKIim9BFEa6Vebok5A1%2FlyQHJCKWbosh3UYA3dadIHDXKcgDEPnRWpq1Iu7NFWIOt2n19Malszq1D%2BTU8BMvDluTXGzeQNq7cn%2B7M2k7HLMEasyBbWRmQEMHoMJ1Jcp0ETp5G43MW8LxBCAIHE%2FU6zo5XtORGQBsZF8gaI%2B5X7UKmYy9UqsDZRYSme0FBbMA0o4Z98otDZpUztKbdZNYg2Qg1ei7NYtD629cd0xb6qk2tdM75ZH1UwK6ONG4Cc8Z1IAGHxQBqHXmQxNoAd%2BFWXpJXKUqAU4ZBg3TKzbHd0BWqE3xYmXhDBMSbUzPPiCR1K2JY9r2S1RMQEwvTnYsjRRHAmqJ5pD0oK78JBJBJ8mAZlG2JkYUYavnnRinyocg%2Ffb08h%2F%2F%2FP23f78nk%2FVb%2FOOPRTp%2Fu4G6vUKItm48RMLGuIogNCu2u7XqIITQmCo2e1MEe3%2F4%2FNB%2Fe3TkpdzlmrRX8A7Gf4l58%2BnlP0PlTYrR2PLwYwJoF87HiU%2FudGM0eYQ9qobYgVz5UKEkzFEzRABQUuIXSrgP5rpMLkaQV5MLJPT1eYHUTGb14gWCRIV8wOLo0cNosnZSniqzFT6nInPwke1hlKf7ilAl1r8eVFlmMTE6FnFVwkyzQSU4NiYdxRJBXoCcR6xSuVmFQsYCwX%2BxweTVQ4lFLpIoAk6kzryX2kmOmXERK%2BOCB%2BOiYlyUrIZdOPo2LqAt28ETrRVFag9MTsBJvJ5d0Zqd15dtIjJhiUsfTERgZW9uhqR3xgyJ8gdpkUwlx4%2F8HGHyxB4YZZY4ZSsj8ONjyzKlkcy%2FHmoDRh5Z8yYJmPCBjNLu5OWqaiY7ED5RdSO8puhgxKAFpE7NybbI77zVDI4T05fyyx0Vk0VZaX016SmFnT7CThdYdomtwfqQTRh3VX0Mh7UBW8KG6jzlHu5JEglXL3VX8AGTCx9nEPTzKDmHc%2BusIMECqDz2m54Dh%2BhlqCL7TMnXPmI1TjlPjwjzUhGacntoOrS%2BLX3YBkwUuTBxqDYtBvyeNtrZYZhqrXGBtpTPsZjawPGLB8XeyoITYPGWZ0hquuoO1YcekCgUZit6LHaSRzfbY6diN2MoNtAdIDXpI6t3MDOhaTOstM08SbXhp6dA5rblXi94uPPnAesFrO2F9pV0d8z1de2CSCzN1gdTD5jyVT35cckWYCWuNzUTeYmWZn%2FpZU76yv7erUCE%2B2kF1vRhDtUKRNgJf0uTAxBMzyZHTaHkMKxAVMx02kKCKRApxzGYlOgMFnDU1F4NeGF2HyKA5qLQ%2BlvPZh8wiWmf2XfCOTZgw841VUC7Dvk8uIBhSg22z12Y2gPOIk7PfRYB44gcOp%2BrWc6mF44Acnm2qRncT2L7lk4mbsAKB0QSStBBC9c7Uzkcco4OKEGI2lA509nbYqlo8tN8%2BedcYeYRgqbCVKR82scAMoQdDLKDXWDHXzEnvB3M8Wose4MQuQVZGJqOARaYdJZ9E5DR3EAf9lP7naFl0tloj4sG9rPFEQRsiwstmtv9cBJIbY4rdPXcpgBqDqpj6uEYcrH8ggrZ2FmwodCfCaRa3UKLrAR6Unqwo6nTrcGQfHOnK1J0KYhioOLOTBlHE5RvgFWBKKH1%2BV1lLaH8wiLzC27V24AmU%2FMARwihG4RJTUVL2YU0J83EvKSCMKVvJsVyoj3QCdMFKEL9r%2Fr2Wt0p2gn1v8X0Qm7uowJrerChwHnPeCpI7tyqxk6oSkUV1OjilFQ31N3rI1ENcxTqJbEtHZIngK5OUc%2FvRuIel57faue3KHCRDya67U7v2VV%2FVKzvgcybwdGO5fFjxSDHqSYXN9jUfrtIWN8O1U5Jy04GYXosJqW6tmqVVHG4e35Qx0FFrI67HR5TiJUyYbnNqdVJ48AFVhbdJE7KXrq9wPQv4tW%2BgTL2idJAKhollESZ3uwz25iz9WP%2BlEYtIcIQH5vQTGGdCNc68VoLK6CEPVeilp0SUimnrn15qVY%2FFbZIAOkLv%2FS%2FyvZOV%2FdQAiUlEKR9uivfF3AZcW2LfWa0FVURE%2FsYyyuDL6pHvhO8Jbi2ZmPADHoEN8Z0Z6TXpOyvZd5BJyqS9hTLaxw9RElPFWVNTh3pdeSZG2ZaKIqGiUIbmrm9g5AXkogxq85O7oW8FA06VyUwhKExrY7E7YfEoAiK8mVHjHFtBbGFSPS1E6CTkLvgY9TDkwVFUCzv0iWlSFz0TEwabAM%2FS4ZcfjOHO3uQIS8mOxyRIt8TVumHpvFfbRrb8wAlv587nYDAYakNQuoetVL7VTwER2NTMmOwINhVUgRvuyu81PEgcNCpjvhL6co7dIveX2HsXjf2fGH1jDRJxqQ6zg4zQAn6LmdE4DTUo7TggEuHhKP4wMIh5lXxgRNoDkmkXrgGpI4GRAnqgQYEh8rUZxUvGwUkPRP7HOLAOUTgMZ4FE3cAQ41vsjvlWdZdr7MnvWtSKZWn2edroWHMUsy37y8Skdfxw2q1UfuzP8br2dNiNfm62azesYHny%2BpzsVmsFOHzZZaFdvvZer3Qck3zpy%2FqAyV8pek2d%2FfqP0vNyuv68p28%2Fvg6f%2Fx9%2B7dI3lq8v8hndPvadKGIrX4rijid3m5f%2BVUr9Oy1Z%2F1T0b%2F9ylpBOoICeSuoxrxDxoRSufpIFfeBQwfGocK143vAofCYJ1V4NLkaiz2mZGyafXplsUMjm3oR6BHUtoI5OX%2BYB8EF9HaRaAjq1AV1XFQhBeQ3qINgr1U6LSoDEKsixtSdWnxpGkhUNT%2BJmGs5C1aMyfejfjDkVg4ggMPEGLOo%2BKkGtAnBrmvp%2FWTAkGfZQNUNOXLjaDdo1I%2FnyI050PfgeBVxmljEY1qSq%2BpwdWm9Q5m1uIilehIsyCXjapCl8sSYOnT4%2FWXjQLAtCQQB1tsZAjW4Zi1ucIOH4wYTNJbcWPxU3TKCwXFgAJN2x6OQRxxiNsNkVmmS95tZoWLtqwvfOH5rT2z02mrbEHMofC3OxnFJghw3uFlrSXcGOoF84Auva3MNQCwEIDCey9r6OzYbmFXRh3gnODjbdR7DpIPaVW8urOcPeBLICfLd39n9sF%2FKx4SJ7U8T08nzAU7gstG98jXgIBukKnsQZovhSPZ12cE3lOPD3RHPMhXDZ9ZF21M3jKMxr1Vm0riCphkSMLKJRHekh0KbegmOOliykSGTno4SaEU8nCX2YOs6B%2BShuzVaMVxgoeajFEuU6heVFyPIwIbbSusU2m4vmtzbV%2FKZZpFuO7SHiiD98dEoe5BPU8lunZi5OJO0uKSHzhBzS2SGkRT9wsV6KK1z879sWvr1cj4x6m8j5BlWJyJuBzoi4yOVVQt0tqK4q%2B3EKD5wIkANL19Qz%2FgZdvy4tRlCAPkyqECgQ7PKLbihUXQ1Qa7WBFeeM%2FZmE3DEse%2Bdp3FNhFLk08SkEk7jizeLCemlIVxT11RNH2UTDdO7s4JgL02l6r%2F8F0vXsx9HqOUrTP%2B0JUzOvAfp8mCgLRecQUS7wjMBDDkbtPM05fIkcca09qErN4HthoP9kQs7VVor1xTYxRU1XQzcnVGQAFW4NmQmwb2ZPWjylrCDKP25ma0N%2BRStHyU1Z4t3BZn%2BncfVcjn7%2BFzom2XveF0sn36e%2FVh93ZiPMc8O1Iaf3xZvy9n7fFpin6f58%2BzrsqVyHCQ4d3EEjiiGhYtjh%2FGCBLAOdgL5i6pmmLyu1ou%2FFEDLHAsbPUPRn%2BazJ%2BvSZPX0I7%2B0WX0YydI1Cvrhw2qzWb3lT%2FJih5wjbA54Wq8%2B%2FjFbv8zNWwD5%2F1gt3jeabnQi%2F0lK3qpV9FT%2BZbfyOdo%2Bp3f67Wt53r2rSoyFhns%2B%2B9x8m38ezlQu2%2ByRpf3ctI9RurMiE9iS2VO6aDhHEmGzmC1%2FmT9uZu8vTbSBlP539e4t1gC0h7HPShL4eamLcV6lyp%2B%2Fd4coPwZRYmJ3TRHN77al6uG3my3lmfg%2B20ihlH%2F%2Bp8MnxTc9gXU4FJd3TIDAOoeyzncL58pOC9YmKzW6nQdWwlH94RT4ZF8FFRMun0BRxBP4pMntvKicBuuFglXTF6vmR5VR9hk53YVrOFya3kmQe6B6q5DM002jXXxwhGlk386LnmoQTwqM0rYhdDzjNLqdF0PInYcZ%2BKRtQ%2BgEPmlyOy8KJoR3Ls8QahoW7NAQqh1rfeo8%2BKFqqfYiQldg9kDb%2BwKjHMooQzR73EKFwCfB7HEVjDvvN1g5PbNyoFnSfs0cDG5%2BOGV7x0CVUbEFJVg3iqvcSVWBL4Ix4%2FIJDXxyLJ8Myphxq%2BGCMdM3YwYotfQcs6nf4XfYXqWh6iDWGPPrt2GQCJG7w%2FliiDZM%2FdkU%2BCTYMFs%2BcQ8nM3j2jE3HLRXpS4kXY1GddLkd%2BFUe7gs0H%2BHuohtu7q%2FoHLhWolNgorJfogOZMzzpfHZ1I6rP1o%2BmPYW3BELMqN30CHJ%2B7BUEaFWSBKEfvF9CIW4JBYrcJiEQBeA06BAFaNTXpC8qqAsYWC9hwAPTSMxuoseAc%2B5ZIUH1yFetkEQDCPyKAbRP97q1Uf8wcMtdcU8AaIPioEUKDB%2Fya5EC%2B4XoddOcAJ0EnmkOtUdf85kLGD4A43s%2BdKHa12s%2BdHHk%2BmIQCn51PuwQ90TtdwFD0kcYoDVPV62RLOMHOhP8qiNom9N1qyNkO2IgCH7FAHaGr1gbNRIEcCxWhygcOaR0wDOXEefAgCdoEBAGBKqzQUAY3JTD1BhRNS2UqjYRkXYtXF1PlwNNq7gHA%2BZwzeYKKUkTPaJRTPdPWrYmv03RFE%2FjOskpTzKrToajgqkh4M7aoTJAeFTsCvo5y94iXYf0%2B3zz%2BJoLz5G6tAWYCXZmB2PMgaFz4JgD0hnGDVZmFAVh64VJtj8t1vPHfCXU5%2Bqr%2Bu421AVk%2B6CuANT6oiY4FrCH4ZtrzgqiEQCniZBXRuJll9bz5Wyz%2BHNeudWOPPwXVdq2%2Fewbo4zzT7%2BxmGT1%2FPw53zgs0kbGHdwbIlQ9%2B%2BROP8g69%2FRhqyYX6Kns%2FDboiqZbwRrqCu5XVxwy%2BOTqdQU%2BFNWh6gpo7omuD0153sqbpuaKy1BBRcD1XZyOWXXXWY2OEPAC3A7VxAFzR65fTcSHIjtUNVEzy9esSlKWRKJXJemtE0FNNNuOKCJATQCTrtEYGvzfoZI4ZMbv1SuJg8t7h6okoHUDsXI61P4XpvcOdB5t7Xq3OiCxiYsvwayIGvkJB0Er0GxS92W7JmFA9NLzeHocA7EVtaBhqk8ypjb%2BKRNYL2hQo%2F%2Fk2cb0%2FqLhRqIhKClQWuQ5EB3Dsxv3ItlP3M6wJzVxBRRIFfndM4DpofPLRnu7jM65Z6AVoJADFLTQloGLnTtbJCDN2AORCm3LLbegbYXlsEUCEKN0tkigyJ1Ym4%2BF0AnDQk9rJW3Gow6%2Bu3ArXQdBWyw3bmm8d5Pb%2BegmZM2stmzDZuChw3nouwV4mQlQuzzV5HZeeArv4qlsagLSzKXjW9vdqoHLTuQyqC%2BhqMhqicua3M4Hl9Ws0WnEZUxv2dXaTQR2O5rdCMRuV6rUwIUG2bBeYWb0svzBpFhfMN2%2BJ3DZkVwWM%2BDoZO1yWZPbeTk6w7aVC3L9dmxbgTzB7oLVDI7YqdJRZAKsbqZgoBqokLHTHcATxsk0uZ0XjQM1kuoPUgOJpkBTRWCbtn2%2BE9ioye28sJFb0FBhI%2Fk12exNMcH7w%2BeHJnuExIikQL9IYLC23b0TGKzJ7bzY31CwM8uBTwAvL%2FDUkTzV2Ke7AqUF7Qy717lotaROr6TLQgiqnSotRRfEKI1GYbDj8VzW2Kc7ZWBfT7iMHbrgPfh05%2FfpoMVRnn06qPrLuHJZ8UV6FzSQJWPBp1PUcEPjtjEe2OZAthmgT5e4JneFjYL9czQbDcpzg0oMhKpI4Vn7ZDQybwmsdDgrDcphg9pmioonw0pZNCBszDyep4bkniX1uid4Yz3xxsAFd37dsQQDqgfrUhKTa5MnWnauieLKJOigqpQFB01Tw03zly3rsPbuCLYZooPmpv0rbBQ2Uh3NRoNy0KCjLThobbHSoBw0aHNecNBa56lBOWj14ergoPXFQYOWdnp20KDYENEaJxndkpFIJukvQeNUZSq4Y5oa0Eq9zI6W33CKw0F1ONsM0R1zM%2FZlNlLqkC2V1n5Yy0cv6hEioQTyJP4alJ8GzfoOJZCt89SgHDaoykhzEE%2Fh5snguZ3EXEPy3HiDQSZnmaHlTBxuPkEr4Z15MGaijL0AoBjBwJQro8YtCXVRLXUA%2B7oGOncJxS6qkCb3O3ZJHDJyfhBjl3Dk4JQA0lcMQqtMXULdAQVEwUPcyWvcSRyVJAYZpbupS6Jm4442kdSDSKVNgn1UFaqDEMUxOQzR3fZQo9v5sIdEzWDFO9VLpEr675WxHVjnUNb5buFcXSPUJis1up0XVoJa16iOdutYgHw9dPwfz0okBry0a2UleBa9ZB81Zpor5yM4%2FMezUhwnACu1esA1up0XVgqtjhdkQ9ePrwFN6u5StwIKQlLV3pjqMEc61XOmtYWd3ued2fxejzad6pVb2ZCtiRnERcyDoLdsyTzdED8%2BMNnodl70lBuYpCELdwSvHGp5n5KFa3A7D7xDIjdKW3%2FIBc5py9C%2BBs5xQ8EoCmrneOZpbFqfwjz9OLKIYeJgWl%2BQaQ1MEfFrWpMIilZn%2Bf27kkVNzBLbYEjvZoKtHAZDWlHDjWiTcKIdwStDNKTdEHZIfhzNOYMypN2IddA6J%2FDOoOxoONaosva8lO2IkOKoe72P10wdudwSq7ZKdxhFY2MKFhvToNV20MLCzkoySAStArnYwrkOcAPWTDIANajQvbPKOILcQJoWOKzaRfOtZRKsqVqnIdLcERFxdceGvHJvrhDj0Ez1fahaJZQ5NPzWvJQa7yc2V8yyGD41V0yqQdDtm53ODeBKUfyjPl3oB8WXd4fxu79eKruW70nNjl%2F1NZydNds7J%2BqbT%2B71p9%2Fq2ZDFb9V%2F%2Be0o2%2BwB2y5fMne2JwZux3XvuNsha3cqxEm3c3XTO%2BiGxffMAE07EN58rfElKWSglhLaYBkLr%2FrYbOO2G1W4iSxgaDKOh8XVhXpugfTIUapxBCrVAiE%2FER9Us6iIGHEswjqlQM92YxEv6U6q5EzoeqL0dmQ2IHUH2d41890sIcfm3DM4EqAcmUV%2BUYSKcor5CbHaLAWUCl6YCCW4AeG5X7pD7oE%2BUNUuL3l4T41Vgbbn0%2BTeviKmpvfcaqeKzHuwnhKWGRxx6ZzLrrDSb0mtyfSD6kfstleKT%2B%2BDyJbP3BEmz1T9l7%2BvdD37cQ5u%2BQrTP50IP02isZlfb9gQKonBJB6TxGVF1h0rQl6N3k6ggI6VzcSN1biN4ZuNcxxlCpybtXTIaHuk3CClS7KJdVUDecvKwubg%2FAoyW%2B3KbzbHep5CCJx3lO0WI94HxsOQY3aIBdFPv9p%2FQ5rTZhgjKFjitSGNYLcK4bSlJ1W5tiRuiqZ4GtchXm70rEokFUx1WjpyVxZwrG4rEV%2B8v%2FycRWCRTl%2F%2FPt88vjYGHdQjLaBPIifoIjgQZ2V4bJZnVbwz0hkDAN5ZXeh8s16YkPnTYj1%2F3CxWCozP1Vf1%2FW2wC9D2gV2BqMo%2FLSl%2BF8A90tBcqiuYRmMg7QKkSXKE1%2FPlbLP4s5ru2hFN%2F6JqIraffWMZzDcWk6yenz%2FnG4dF2oib45pCgsb7b4twz4WfDh2GbgQQukGQ39ld6AZD0QOmDLxJbGJ4UdUgvIZgDgXA4ASSbd%2FhHAw1emmqp3fGKjNVOhPHKksvHhlixwjAIBsCTKgOMakZNdcYk7PKTxugEDROqvKSRAISF7jazbyzA2igAaTnDD23cVKgyKE2Ag2PCDIkRYfUhpPpeaaG6gNfhyHSex1iyIIWbjq93%2FS%2FQaKqg4hAY%2BySH0yydEl9KEB0kBqqm%2BbUezzs05pFBEKk5rTuEhRSc16H4MmBbhaX0FV9rQQ6%2Bf0GTwh08oeY7NXEZCmlYxZXuQ5wyvzHZEmNXRPyUlfKidLmGEdV%2FccB%2FXcGToRsvqvLTCOH%2BgII3fvNTZMaey9UdhwgRBCMnms7Yii%2Fdn0SZNvo5xcgYF%2BSloBYz5DQVcFpP06mFgC4KUzjojIQ2KLntzAQ3NFQJBjLFdu6FPVSXSFvECfIClozwFiFpgF3CHGDEUC%2BJSpuidyMJGOuWvbzH2QTH4gJoTEHzDPcHf0h82w6mtypQvkgUHsQpoTboVZQpsg2AOhJrBqM0r5UsQKSb70QJQ7ZaQ1bHcL51ej8Ik6NTFETXLYSEzCK2x3wDWZ2X6qwManhaFR7hiVQXsO74OFwhp1yholxHNuw9uAMg%2FbXXItY0YiMkSjJlaPW%2BiBXNfOnD%2B%2FdC0K472Sj7skGrqryfbTVlhM1LOMLyB9h0wBl%2FXzraHhCHoq9FKt5i9hL1ncdJHw%2Fzm59NxRgo3yMDhz2fCLONfkZpDMAOmMHWFGhiL%2FOXHa0uHuQcyCI2uEp3iAUcNH1%2B7BNtofbQ%2F3%2Bbq4Bl4sFtdCaWuDnVgsHLRq7drVQcHtQCzu5JqaAWrgWn5zF0VhUW7sJRy6wmJExNFCzM1mNKSCreeXu1JR0pObK%2BQFpy2TGrJHJ7DUnHVMo2OjmpKk%2BKt1CmX1%2BkdSfT%2ByBUaje7PkZPz627CFp3PKvh9oALXHm3CCokgMsxO0QtQaxxLOslkU8sZV5BCQQwd2yLOmOXjVTgbR%2ByR%2BYguG0CACVxj%2FnoYKJNhpvRxOX3JcSIWi5UF0hbgmIWhN17lL1mNZE%2BkrVgsUMvS305j3cRAPT2%2FrYn4eStBbHbSAnJHsDF3fHQFyus6K0mNY0ExJTdl0KzRbWQYEcv3hUWGRjgilgfeMYjJR3iAtUcb9XCV5YlaaqyrQLXm4wBeLVvhufYwr3FuaTInXbWtGycPQZlo%2Fj1FfEHWRr9%2BNU68AaBwwVFAPaEGqt7vDUqu1pnCRGCZoHxXaKbI4pvHj5wrQhcEZxIG%2Fo%2BYxikL%2Bq66Wzabf58utsTgQvpZV0HlmK2oWryTgWY1Kdew3PIcAMrKnoEBnIe3WzegUysa6iuc174o31czGtvzEXBYF3Dx6AJ0J01vcbM2g%2BjhmZlcUT1MbKawGCRS4QQCjHPwyAn1tP2eiS4pnbsEtpDAHE%2BRTQQJ31A8asvqLElI2kcckGq5tL0w9Dq09wx8CAaQhw4reGKGa1HisvxvQXfYi46rFCdlxhoouo9GY9Loxz6DQzsdj8PVdclNQaL1kZJgLZlMgvF0H%2B9SHeXAB9jzMhksT27WMzIah6YHjWH5BnXwa8HN8KOO%2FFOaFobJLTO3BmyG8lWsxqfHl36ATSyFs7Wy53UqQ%2FCY%2BiMduPvNQDfpE3kSU7p8p0vMDdzHTh4%2FBuJIktU41GcAkJbKp1N48qTqDQDVd22aSY2BLrLUJCzyDaC0UQQksIGaWA%2BgXQ9y%2BGQHDIhvMsSXLBq%2BYoBgLPvjPkSf2m5GanlQrp6Op5FfVkyr3pp%2Bh0sV%2FOxhPY44IgPLtLJCQ1YYmrg9P%2FZL4otpxJKPDnt9gBKn7NDA51lCUq0CqmF2ZVoChxh1IDbju0tbFYJNIBqYFD5R4rYVKTD4sHmTxNTPjmPl%2BBeMEGRffwxpDahCLo3ZkMoqZF9KIFCTvzYnshSDXDkC6a1NQZ%2B0WAzgjvpIZijVg3Nd%2FpLN2d2TCLoWF4Q9VQkNxA8UO%2FGgqKHmbHTlYXlOo9u%2BG0sQQT9%2FG0aTtC2G%2FtmDA%2BLo2IiKpBgxuETJV2BRG%2FdXc0gmJ3bshOy1eqV1NL7XlEY0RfBM1bnIjjaIyQKH6qI1r6ELelEeBG1YvYZVdPUIIBYfNaO0GNBgi1E53XTtAY2L3nuXKCRjUxxo4qJ7I335lfj2yWUr9OVeBfZWVCLcWRtRSxgFI9YIVuh5x1cn%2FX3oLEwAh29pU2UDGeiytoBEcVgLaJfaoh4L%2FPoKO4GOC2iwUi7NuMg8Ideu9MKvKWl%2FKop8AMLTCDGvvVhBm8FtlRBDhz12rQM7ZtZTujTY9qZzsEm75lm54lHETct1lvqj88mfX1wymCEX%2BsEc8whhYIerbiEeQfusabPscVk%2BgWvEkw1febaiKx25VY4p7OPPKsOOBsq9BZwG1fJVdHx%2BQuX9uUBrwbxFqxizeHJNzrEFYaNwiwnqciz1pxizm0rclvSR6NoXP1isWj60ItqQbPXalFY%2FiI43e6TzZWlUKXv%2FwMEWcmEImYq3wEAyfAd5fci6ED55ytyJ1QP1aeIKvLsxJibnnG8SY0hupTG%2Bi2AU8scc4oaK56MU%2FIkzqDw602jFcxnURqNTGOSnJlLRkpll5UfHF4P22HggUFP7map5lqFSePGb5v0HHfgcB2Oy8CrDVC4BUDRY1PB7SHZzapop1brbAYVJJV1lSvs6fVt1yFPM0%2BXwt9YkYXv31%2FkXi8jh9Wq43Ua7OP8Xr2tFhNvm42q3dswPmy%2BlzkQ43X2V9e6LKfrdcLnWbhVKv7XtQHzisTre%2Fu1X%2BWUpXX9eU7ef3xdf74%2B%2FZvyQZby2d0%2B9p0oYitfiuKOJ3ebl%2F5Vavv7LVn%2FTPqYLxya0WDmI6ZNXUXJ4CihkpAu%2BNMqNJMn6DiPrDo0FhURD1kUWgUd2aST0zm3m9nbDeekd081AtrHBzInTUss54a2P7DCTFX89S35p8lQdBANL%2BxhbpR3hfdUWHbetINAgSGQKoKic4oDUdxJIGzdNQkzXu%2FJom%2BItTYswsWJa9lBEDgGshy%2Bg1cg%2FPD3USk0zN7KeGKHrEAa8wCwi8L7OyoTpRq3bZmFJMkQmHDXsApPjfgf%2FyW0N9%2B%2Bc%2FH%2F%2Fm%2Fm%2Bfl%2F3x529w9%2F%2B9NjUlkLQvNrrBS3%2FzVLAtte0oMMa3T280Q7kFu7usFYnhmKdfpGPUgGplV2NexE6wVFFVqh4m6Ph6g5A%2FKmhLSEaQN5p%2F63AJ2qpTtZNuw3GsnKwCpCZsVzlNrUJWYGwo4jt2VGoCkgnIGjiLMwoScA3sTL8XM7SIrZ6HJoNU3Xc3%2BAcEEkhC1KnD2sLTUF0TEz81sbeimyPgoyThbvCs09O88rpbL2cfnQt8se8frYvn08%2ByH1KXmY8yzM8QQEmRvFYiBAbBJzKGoWyv5IhAoICa%2FE6hfVNx98rpaL%2F5SACxzWtvofH5bvC1n7%2FOf5rMn69Jk9fQjv7RZfZgzKjMm1MOH1Wazesuf5GH5HHEb4af16uMfs%2FXL3LwFEN0PdRRoqtGJ%2FCfpeKsOHyr%2Fslv5HG2f0zv99rW0id5VzmChwZ7PPjff5p9tMM1OSdnPSfvZpDs%2FBIqL65oV6XkoDaz1cx3jSBpsFrPlL9K8McbOHmGXwv2u3r2FGkD2MO5ZSQo%2FL3XW6FUq6%2Fl7V4CKYwAlmB8GZ363LU0Pv91sKc%2By99lGSqT84z%2B7MH%2FARgw6Su9VUKK2IiPwTaMjpQB536qg4%2Fmo0e088FFcfyoFJtnJJJRATHJggGMfkzS4nQ9lc4jfHWyZs9oyP6pcst%2B0aSPvDHNNTUg9GgnJ2EgeYYq9Ix1TvdNjrWKdWtOVKqot7A6whIJttEdETzeOdjHEEcaRfTsf%2BqpmTADSXJZFMyJtLsV6FblmN6BuMrBSy%2FbS8azV6HY%2B7CV3WkDgkpYNplO4pMHtfCigEPy5NIMJqJD0bTBhKBaUG0zyMta7OPQ71CGW0ry6N6V54%2FwkUYZUVgrGb4Px1FyXtRdZunzjCUORJaa6s5SpRPUMhqlmpVs9VzhRVpQaga45NV94ox8E5jqQuQZoTrmjVQOXBHPKVklQfWZ9BtvmqH5kp%2F2XtGO7FMHnKhNY3OH2xT0TDvpdw44ps%2FPPFOoV7W7UNUzqBoUCZ1qP5eTrKWB8e66RqWmhqy2SCa3rOxFlUPWn1zqZmpX1zQHtJ3xnmLOCXHmFqqC8HiTgfuUsa0DzQStqIGGiKrQzt0X6LBPXJTnoaOli6EAUjY3Fsqt6CVFw6l9npwe4xXhv9ODc1JTktHsNbqBFIDT2TE3ocKHqsJikpe2kpmojn4o4yTk6bzrTC1%2F6z9GIEAcDaCE7jSk4wKEzEGrW9u6pmDk%2FOQGW7oGCADfvMp1iSw1ZL22DjaShc9SBnfOeTXlo0%2B1Ze%2BfboHUsdTCKe0hswG7shd%2BEeEIdVdADzyk5LDjjtk0P2HMCMT2%2F7wSuFz4E0n4C6N93EhEgsmd3nhKoPObynCc1NN2edNMP2whyTvvuPOHIDhf3wXNK4Jlr1%2Bg5SQCqGzZ64jbBvmu%2F3SaAmXugFzjkgTJFR7XdIJssEJnpA%2BJSLXscM%2FfQ64Nlz2GX9aLdKEziaMxF3diqftD9Gt3XhI1padktssgOjSL3TfYDEyBO2%2FdlIbJ3dAWACJEgAuN7O2v25IBf1Y%2FYQhRXtveaJTs%2FDOt63ZcA0w5yWg7aARm81DpdRsaMb8FnFvaQ5Hj1VznkT2UrpJBZMyXMmqlpdQMVgRZGXdQ8bHnEjxOyhSeppgsR5CWAm526O2kgF8Gxa88AQpuzXWNMxnFJSiwUoDEvHQ56hVtYIf8iUa7EJIX2qZ2mPYcctt1zXEbA6gYJ%2B5hhj1pTQO5OpiORrSO32OOt1sxfut2q2KvWo5DN7lePmgl6R59z2y2KiUJSSb3eDbFrA%2FplYYioGBOrXmZrdFaQ8xvbEZC3FbA7QP5ioDrZs%2Fw1GHNwFvfshptQfI8cMgElCQ8yKa5m02fLDtlNovYK8broEsJAYsavRyagtMxe%2F%2FrCLP4bKh3jqDbIh6D8mHeTH3K92jL5HfkcsMnvquBeGPnIrP%2FrTXC9C0nUVdLl0G4ViT743iiqWRqR5aWpTvobU06kzcaRsKUSpoe1fPSirbAT%2FTfz6RvVeB9H8%2B%2Bzt4%2FlfPy4eqv5LKy1R3aftPQRxV%2BB1bx0lV0vHhTd5%2B5LVO9PwMBL7auRfUuk%2BjhCnXG%2B89g3Fle5aTxGnsdVQtV%2BGYPcGUaLnHOGbU%2BVC1dFN3Fs%2By2QGYBQ0dbhSf2cao338yTv0SILwbdbK4pFFsyBnkeeBRJKjtRbgIfCPMLkiT0wyiyss1V4%2BPGxC9Mt%2F3qoDXlNEntZ9Q2D7AXIf%2BoQNbiqyrIWLjzeg8cM1RpthS70Ee55eGbk229%2FTf94fvjyX8k%2Fo8nsnw%2FQCpheRHsEHcclslnJhZh6Df2AlKuJU4dU%2FKnQI0bHUcnRYRb0PlPxIPKQk2MVLpr9STweUpIes0pG0Apux4nPJD2IXK3dPgx44koAwYaH%2B80ggQBBBvzVFVGgKg4WDMJvIAeEAR4da6%2BCDDUUHVs5sefoKsgLtXVnA62g2HPIMZ8VFCBgUFqqJfPk%2BvPze9DlPvPzILoNhuqeKz3PC8XUIzcN3C0UMvRtIJ7Eu1LDMfOZoYexh6r%2Fri5DzxK6ow0n5n4z9DAQULCkLYMyZOj3aOFemJEIjppcV44eCzzGZYu%2BCkQfXDtojZFKSqdaFLkCRD0owvC9zdW3LtIXmS0Xyc4j2G%2B2HGa4k0sks0yQ5jMpUambv7swLXETo52GE3hiM89qomZ7UI2auHCnj4yFqNXa7OxJOuPjHS9C%2BiWBjduvk%2BL8Vvc%2B6ytp8cCEBvJSpyxGkIUPhHlpauIIpPrrGPL%2Fr9fWohSPjWW77cMAXN6iq8aLpQUNiu9FiIBbJQgkAmJlvrO4NacT0iN1HObOr9wfK356AJK4zS1f4QTk8hUixeiTbGpPZgVNeypa3gMPRB6f9sgrLIDsFWFsbKTBj%2BhBFS0HZkdU0VI2u%2Bl2NMFDdmYdfYGgkxha4tJd6h%2Ben8uTfOJrbh%2BRM04vat8%2BIlE85tZYLgxlixEDs8WoM%2B1NoAAfV2IzKac4ihFpVTPoagCizqQp3%2Bjc%2F%2FGvm%2F9IV%2F%2F88%2BWfD5N%2FzZ7%2B%2BvjHv6Hasn5FfGbrx%2Fx13g4QCJsIT4EEBYJvHcZ8QCAg9%2BG6gVBcbRcq9wOLmoFU2aZnYbyq7CS5LXWSZP5ash0rPmDD4IZHNrTg4ALakWkAAltTW1bXPRTw3OIpojFHDQBFTIzNjjgvmELOoRsEi3VLV6QzUUxHUAYMJe8rllBAM1HDnoXx5rkuZ1GDn2%2BNO65HFadxroonsRbd4aKLOI1deAkYr%2FYML1Cm1ougF5SRvUHEjNnYF%2FlKTK9h6wSDysTKASv9L68OG7RKgxGMKbDeMPJpcMDdU5xpv1bbjUDIsEqt3s0vPU1YMO7MlYV82QOI3cthsSwBiB2ZIU6VGbEAsZFR7%2B0TG%2FJXL53YMSX9JDY8suGyia0yur0kNuQkxsqhmJidDGZQ%2BCBOVsZcnETianvUVZAfRgl2%2B1Jp9ugqw3Sqvb1yKpCovRqV0qZy4bypaJxMbMuqtzMHOlGBCR6TpAHacKC6O7zhWpdavIWK2%2FB7HQGYatcwoKt0LnOqIUB0iVdsofalSz%2FeWAKQGkOk9nu61biUaCRMDQQ3FUPchFgK5Tisgw8wvYug9vmE5USXspfCAhnePRAW46q6%2BYJJYUmYkugstpydNcORkZi6Wu78MoKhSECmye6qNmFRHxlMA8Ad6wGS1xhmkG%2Foo2mAa7Ivsa4q1oFlVeio64y5u5WwH6Lhv8NSbZGz0USIChfOrvoqYTThhZRSYLK2ICk2YlpShuW6uKz%2Biin%2FKS0VYnkUs%2B6rTyRu3J63lkD5gsRzHVBNeWrjnM%2B2%2F58ptPOCBnDspZksoKpbtUblRWH1RGfKkS6MSNQ7VfCrGB%2Fg9JAdqgwuf1qfcKb1IQrkWDEG4yRtdHLBpUs1Jute%2FIvBv6S0cE%2B37WYsluouXvUSbXrDyb12IfXiPtWUqFf5tVJFc%2BnsY3bV7mQdYnrO%2FDBO3ypBWyAzUktHy018ttEVQ2Fsz7WGkIV76XSP1MLierojBi059k34vjW7t0F4rEb%2FluhObMLjHhAeSrBdOOFxZMi1LagDx217JjU8q%2B%2BiSa132uFSY7alXBK%2Fm6Rhute40mcbatOGzcItDo%2BR6%2BPCWcHu6HxqgVxeQup12n8LWBBEaEXRW65ID47XGHBEbCL3ptiTElM85qXLGSZYfdA6c5mmo5TaXc5Skbil7Yd6U9camUsoADRzgfYbmIsBg99G7PN19qEebmYPmrol6CBCf25ma0M9RepHSczZ4l0hpn%2FncbVczj4%2BF%2Fpm2TteF8unn2c%2FVl835mPMszNNyLGBiokLFDPBsUpAXHSGFOAh7ETql9U3BdZqvfhLIbDMiW3D8%2Flt8bacvc9%2Fms%2BerEuT1dOP%2FNJm9WEkRzeh6ocPq81m9ZY%2FWedEiECIn9arj3%2FM1i9z8xZAvj9Wi%2FeNJhudyH%2BSkLdqKwiVf9mtfI62z%2BU%2F9fb15nb1LrWH5C512%2Fnsc%2FNNzX06nWt2y8p%2BXtrHJp0FTmLYnZHmhlLX2twQrn1h%2BEaSYLOYLX%2BZP25m7y9NhF0K97t69xZpANjDmGcl6fu8VMx79yoV%2Bvy9MzzJMXgiAmwo2oVnfrctUQ%2B%2F3WwpD7z32UZKpPzrPx0uKb7pCYwDlzBKx0CFWHXLITCIOTBO09gfd84PQg6MqO5mpEa388FIrisZuKThnH8G5GkZYA6eoG6a3M4HlzTovgvWTE%2BsmR9VNtln3HTnxbsBFhzpm0ZS6UxV7M3OBaNkRFLiDoAcqEpKGmO%2Bz0TZBfIRFo99Ox8qCKpt2LH2oBg6bWqOtnXJOqm8jYeYQYjb2WzFhCe3PCxwYssm1PGc2eh2HjjTRHsClxzMJY1NqBP0V5Pb%2BeASIEQbTKh%2Bm1BANtCvCUXdeG%2FFhEKACcWlCRUFlWRJXTChJDGOWWxZzPbnTrPDpOiM5BXraoK2RlV%2BH2TGoZaulGfhBm49kFsHaGYFt%2FBYLhmSmUWDVdVzqwoBO%2FY8m1VuiVXFrIoAs0pqktSURAYVRBuDPgCzChpBsCP8lLU73Bn7ytSYTRz7Kp80gszsEbztqg%2BxqjZ4c4BGVKgmOJZLhmRE1TtkwYjqiREFlOn6NaIMr9YYURHQ6qmNKFNzH1SQaAz69RtRDAiPh%2FRe%2FzhxeCYTC%2FrqWC4ZkMlkurIP7sAY8NztRLg9FhjqscAAxp31WJg5ddbOKWsHuY3Spa2oxVG0Y0Utjf1usoaBgNJVVwgE2gUENNzBOxBQl8LggAB2E3oHAqr6HxwQfpd8PX%2F%2F8u356z9%2B%2B%2FL3n%2BaLL%2BLb5x%2F%2FvgU332WtlHf5mO%2FU9S3KJ%2Fjr7ElbbDqAMft8Lc5ZY1q%2BfX%2BR2LyOH1arjYpDfIzXs6fFavJVWoHv2AD1ZfW52CxWCoLcJCzO%2BJ%2Bt14uz3lpPWGsTvKgPlDCW5uPc3av%2FLGNDXteXVeDk8XX%2B%2BPv2b5Fctnh%2Fkc%2Fo9rXpQpFa%2FVYUcTq93b7yqzZrstee9U%2FFCmnGndPZ22KpWOWn%2BfLPufrLujFe1KxrizOl8YIdzqRj089f6TvsijEh28XwoxrBpNfQBca8YsakJGnEmCjyy5lw7ZEdxCkGfx2SJOunx3SGwQ7UGiuHKZBqR5SNKRBaIS0sogKRB%2BaZnGSitEAqFjmbCkBaMWj8HuqITnAaOe8FLo%2FYK8UyL39iQ1vczxJhL7GGIYVnKnbF%2FLVDZgQymsxMAU%2Bn1bpKogNFxUTORAWHJnqFYZpqVihGavo3%2BNvbbY0wtQbQYAYEH6TB5dfCrx%2FfzmsOpXAWlc%2BiZGxSBIU0AhMTOS4igF7EEdqGZUNWMXvrrFlLEGzr%2BOXtaTnW5uPD6rsDurQjJ5H6D0Y%2Be%2FO%2Fciopm3r2%2BTF%2FVLR5XnxXX23y%2Bft88%2Fh6LnSlYsXOBFsB2RqQhcm6wrZmQzNSgfXtsOpsqobb9j5QSZXOgTPLWmKZuAdnR4NRYCyhSJfI562pKYSpWut74ZGuOErs6e%2BgkkxIYdl4MUShfVk2qc8yfk2IXUkLHAE1Md0NYoPjL5ARz%2FOkX9A42asotoCDipkg3DpTN9Cs02AWHA4spjaw7jni1SYAh6k6%2B%2F2CYOauGHLwO7dgNhg8EwRzv2CaFsv%2BCCYUGBEq4ivSII9GHkXvDkqgzCnI4%2BHAJn07KKGRy%2Bp8TFU3d5DH7FXC%2BnY%2BQoOfgzweDmzct%2FMRmvSs8qWx2aN3q1IAQTCzV2Ozf3CXYHoNYDWZ%2FxwEcz%2BwJqjcH8GERzbLU1Ll5vTkXcCC7fdKCKn%2F2NiSICKAfYYmxF5JwdGuKA3FgBuk4Nw48YCL7AVPxla4TTqDUKZGjBGgINsos4fRhSIzl75eSErDmFg2Yux3lxNM7BBGaeU0Er1z22rqS0LOcyeQFDUIrPi1F6H%2BMakLp6pgV1V%2FpaP0xNL%2BVgyFhNk1hhhYC0ghH7grO4ECoYuzEwph1IRQeJt890MrqHPhqm0q76ujUISdOtwI6FmRxwkEfWcGFzBL1JSVphpEoXYwX5bBxWNnk3YMSFl3mwVhSkMu4rVtcCQAS%2Fumc80SnCvjaMLdlmjflK5Jo1NdhyzM1vfC3qTKWJnE6oH0NTmH3qzHdHC9GT5FWjISBdeki%2FTfvpaiHtqoDEdjK91ABORKJjHYyNOZpQqOu6MqIK0wpApAZTDo4nSREtdo7Ydd0NUuQm55FgwYIi7QmANjd7o7%2BiEvMUCmIKOIFVj0CjLIHwyQ6fMwJmM7f94HyICBaAGyDLJiSk%2Bv8KrxhYnpO8Vm9hg2676xGWOvl4R7tCw7GbRAKbXn78QcMjEwBbt0OjM3zYe5UYotDhMbkCJcwfl5vYBOsCJIzUqqK31HYJKBdZZk%2BEIfl%2F%2F928dvr%2Bi3x7%2F%2F8r9%2F%2FB29%2Fx84FIOq2cXS2VUPSG72K4%2BgCE4nKqIk8ZFaMhtgcvmBpNai1II7fTnQ7BMw2NoVyIBkXpaDjRFBDlULb7pcx2VqHdtOdoN0hcYj7PCZteoTOqwk%2FW21oyXRcuU1rNSJost8qK2iq55PsKLrbvoPiBXcmyaYPp2YioYDNZNVHKw5JVM0xdO4TrGV%2B6pWlbknVDAVmHMCHWWkVCI1H3jyczZOEukZKOVUahtyRbBtTCAKxGL5tjG4orBIR2A16GUrZluvF2aM59NiPX%2FMc9%2Bfq6%2Fqy9uYFbTfh9keSu9kseaHRYXyEaDPTKdhpREuu7SeL2ebxZ%2Fzyq12zOL8osZpl2QW27Hh6h1Wz8%2Bf842D5GFTN0EyQaGozCosslnp1nLsp13RxRlH5IFWredCMVD0k4BRZNyV3oSjUPKAU6vFuJqIsXeYxfXpTULQ2Ewl6JPebNDo0UO9yQ8l%2FzD1Zt10k8hMUtcPhiaKMWFjyznohSgiwLO%2BAFksmCwIo4H33%2FEv%2F%2F3Hv77e%2F9%2FfXv7zx5%2F4%2F339E%2F8BxU1sdI%2BdtuCQHpCQHanoMWe10xYIAzyx7qYtgJQDghFZqaOK%2FBWj00pZadXunZTmDmYzWyOdg2b9HaYGm4gngQvUhRMKDf2m0rfuqC4cxLRB30znAaaTKIui2CVtQlzSFnJRqRQWvCPCQkVJ1ygsxxT8tQ84lOBCiWdZcmMfypTqb%2BrxDNBRp2GDJBSNMWB6IDqG5oF2hh7gLmM2e1Nke3%2F4%2FNAUiI68lKfMJrpU607X%2FCZqACWPSirAmZNijd7lpYybs%2Bur9BHZGpRyP0LWoeDM8q3c8LI5tLXTBCXVmVe4yqw8gpmV86JGou28EMiscLmK6opEplQ80qk%2B%2BTiAW4BrVdWShMFwUuIXTnD%2BXlHMyZU9kFd1JnqSrVA5KCniJJW%2FhOSPNiAYlJAaKtYEc3skKuFA2xEiHeVzYaDhas7c9sv0NDJXmGnM1BbjhJtUJFJ9Srl2L3YWizN2cZ6GFMW2VNZYBGxr91XAEuMW0sSwxwvXmKmFh7yRzb7NHOsr%2FDy9tjWZ49Ngw84gU2mFQ7oUdZUthiGDohRUmVwTXJKnDCmzrFJgP6r0PIXxJypSkYzl%2F2x%2FLMyhGpkOi%2BRh0KF6Dl0CqsRTqPaI9K6Rog3HZ446ImNWzWnWWkuYjQkwqaI7tIHYyoWdecXs3KLXBAgGeo5YYdcIDfELGzY2FiVdaNmXgvcjlIGhKpwQy7gQbm0xlqECoHUZpTgi%2FYhlgEO8QzBjfzBjG94uFJDoRzwD13TAhXjG8QYZicaiunAphuYc%2BI1nYDgQOfB4BiCYNZaB%2F5AGgUMawVU6wVViY2sSf60i9u0qkSvI71vNpzfgeBfQVyLdlU1A6X19ZCnFlSiLV7griXtOaYQcSkMlKhzySgnvTmPVDKasVk%2FmYdmJpr7QKxu1DQmcHxemqFrzXoGYjoQYitlCwtSdLEHTThJVnK52NRahW6e38cJh7U5sETS4RPi0%2F6E9IirkfqdsCDXTTLfYwY5%2Fuet4WnXz9fZO4Ld0J6tilqzAarLdcBx4JBd9TMZmlPJW9CM6hqSfwJMBOuMWcPj6xR%2BmzkTCG8TNULhKcBAcSSi6O0%2BhWekXT%2B5ifGjfiH2NhmLcX96umVF30eSm9jDAzoktn65Xq0258UINnP776mmu3vH%2FAQ%3D%3D)
### ER図
![要件定義3ER図 drawio (1)](https://user-images.githubusercontent.com/75299872/177898327-0a35161a-8f8c-42c5-80b1-8f947b2aeab4.png)


### 画面遷移図
![要件定義3画面遷移図 drawio (1)](https://user-images.githubusercontent.com/75299872/177898340-6b9e7857-4dd8-48c2-b874-b58e7a5dbb31.png)


