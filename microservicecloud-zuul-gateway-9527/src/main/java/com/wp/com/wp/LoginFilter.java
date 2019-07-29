package com.wp.com.wp;

import com.netflix.discovery.util.StringUtil;
import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.constants.ZuulConstants;
import com.netflix.zuul.context.RequestContext;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.cloud.netflix.zuul.filters.support.FilterConstants;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * @name：LoginFilter 说明
 * @author：xuhaowen
 * @date：2019-07-28
 */
@Component
// @RefreshScope  刷新配置
public class LoginFilter extends ZuulFilter {

    @Value("${spring.application.name}")
    private String applicationName;
    @Value("${eureka.client.service-url.defaultZone}")
    private String eurekaServers;
    @Value("${server.port}")
    private String port;

    @Override
    public String filterType() {
//        pre：路由之前
//        routing：路由之时
//        post： 路由之后
//        error：发送错误调用
        return FilterConstants.PRE_TYPE;
    }

    @Override
    public int filterOrder() {
        return 0;
    }

    @Override
    public boolean shouldFilter() {
        return true;
    }

    @Override
    public Object run() {
        System.out.println("===============login filter====================");
        RequestContext ctx = RequestContext.getCurrentContext();
        HttpServletRequest req = ctx.getRequest();
        String token = req.getHeader("token");
        //未登录 中止往后传递
        if(StringUtils.isBlank(token)){
            ctx.setResponseBody("{status: \"please check login...\"}");
            ctx.setSendZuulResponse(false);
        }
        return null;
    }
}
