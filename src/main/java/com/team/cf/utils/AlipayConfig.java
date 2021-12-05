package com.team.cf.utils;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2021000118661385";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC8X9LwNMiKbFGaB/NwejxETKsRY7qNEfKCPsgDPZMgTuw12DqlwTLEWnqAyeNt9dVsvQnfRcjxn2+oCxwExkixl+knJxS8YDgQLogfqeuJy6mfE4371uNFmE6q91kcN2ZmVqvlkQg6Dx/0jk+rYQp+J0DUSe47lOfWtgY8sKE/Rma6WdZl6FcG/GvOV1RbPe9kk5L9SD4bnSWv/g2emW+znl0Z/0VETzJlUYN7wh5ed9Z3ervdm9ETEH0COxwmlDR5+xbxT4SPDnsBUJLZGYbY6e6LrCGvWOlUyJwPtPv7yH6SrIDL9fxqCT0gczBd7nGah5Ix4F3i0PEvXK9eoLaXAgMBAAECggEAF+849wpN3MCskZynAsiVNbxkE/6O6nO4U3I0qay+L+G3Q5Qox3zHvYkdfZWpTwRoTLusMHFGeeTfJAPdWIH1JJN/rVja2qCDHxM6eoN1iPmWoL60UKZaFDKo9DIfYWVsnl4u0yldWTsovUMDvmvDEIpeQ1rtaSafWnmgSz/KDSblyZpbxYlCdKtZ5Ot2hIOwOo9TMJL1n4YIu1fOkaU8ejZ3zzz29kwJXfk0B+yWvSmDzORvYTLw1pfKzqrEAsKzUuYGo2tUDiy8VPoLOedESztTGbHD8RcKG6S/UI1clC0lrUnWW15uFH7T4sie4/P5c+z+CTUjDVCoLSNhST+/cQKBgQDwHPA/6b8pUitr5C9fDzGtX7cnxjYc737tfLGWDh+eCYmw2gGiPJUaFPElMut/GLTJ3syJNG0i5+OxzHL2nuJRuW40NxIUgiUNzk4rQ8tYfHCHT99gDEZ7gCWTB/I3+0V3l9mcWNjcesy3pwAqczLIUqRfO4YmabK0sSxC+6e8OQKBgQDI1od1eElGXVuDDrrOSNBBNkeBchfvG3c2to5qDdpxDg9SpF/yrZ5Aduk81PKUBzD9FtgP3uGTKNmPJ3fycvuTM121dacOq7Utkb+3TWmJYINqVoz5oAdqtFxbiUrkqmh4Mbc0GXEh72SZWLkJKHhKQZJIoVd4+SxVGArnR3ypTwKBgQCs5bmd3Bv5jiCULRhrU86KsCx7qH+YsF/udGaPzZW4v9d1EFYy03rt7/yAs7zdpRWxcwxHFAguJVpQ0g5KRbhj7qlLUghj2h8CZPbmsod/LQP+e2Y2jEBId8sWp5cj9nxcFGzu5w8pHAfDiq5U4uTDWLbhmEQN7vhuolFj3kA3CQKBgQCeIlySH94CK2vsq2JnHmnrjuOKht1VhZi+WcuUsce3kMx707VAjXe3ZmmLXliKOYdXH++Lv4B5sIZs8zS8j9CKPL2iLTsWkBieAs6jc66PXpDa378spdZxLAY0hMuVdJ/BU9Pej9HGWIorO/KlxVnBjhOyYGdRd1Byx/V92YnMfQKBgGNHPTLVv//Z/5KTLCXfxe2PoC7k3pGvxUmi8I2uh/cF08N1Z837+t/U2r3nkLHS/I2H4psMR0quQM4iAawSaAdQHByQy5QxyTFDAmi153Clcn9upY9PsPeKKlh0ih0v1JKsUrW7kBai4LrzUZuU3fxgli1P1CgzBjfWoPT9jvHN";
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhHdSteQa9gRyECKuduDAdprZdDiQC3n68vAXs+EauGVPEUyDrQbGP+PpLzeMuY2lJ6txbGUDqNxFqyFxpe+nZ8DOY+5ti//R+ykyhdjsRNVBoKN529iwdGORkB8NNxZzlpjJ3EeDUKAnduJbVz/2dZBs85V9e6sErzEvdPXhy6Yflw6IToGxex/3QZjsCo83Z40FZSgaWbFbU427MtTDKWcWzhpWOYMuRwJaFq7WQr/wFPyZZideOC9tmvFKtsn32hUlReWgqBgq/07DCVNlGZQ7e8yHS0qdajhxcscWRsXjpoa/vMzLeM7fDZ7MRXAaSA8iUdNluNOIqyGu1DM1KQIDAQAB";
	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	//public static String notify_url = "http://freeinfo.free.idcfengye.com/notify_url.jsp";
	public static String notify_url = "http://localhost:8080/jsp/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	//public static String return_url = "http://freeinfo.free.idcfengye.com/return_url.jsp";
	public static String return_url = "http://localhost:8080/jsp/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

