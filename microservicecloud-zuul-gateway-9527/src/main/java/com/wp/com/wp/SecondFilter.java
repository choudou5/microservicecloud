package com.wp.com.wp;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import org.springframework.cloud.netflix.zuul.filters.support.FilterConstants;
import org.springframework.stereotype.Component;

/**
 * @name：LoginFilter 说明
 * @author：xuhaowen
 * @date：2019-07-28
 */
@Component
public class SecondFilter extends ZuulFilter {

    @Override
    public String filterType() {
        return FilterConstants.PRE_TYPE;
    }

    @Override
    public int filterOrder() {
        return 2;
    }

    @Override
    public boolean shouldFilter() {
        RequestContext ctx = RequestContext.getCurrentContext();
        return ctx.sendZuulResponse(); //上一个过滤器 通过 则他也 使用
    }

    @Override
    public Object run() {
        System.out.println("===============second filter====================");
        return null;
    }
}
