package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

@WebFilter(
		urlPatterns = "/*",
		initParams = {
				@WebInitParam(name="encoding" ,value="utf-8")
		}
		)
public class CharacterEncodingFilter implements Filter{

	FilterConfig config;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.config = filterConfig;
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		request.setCharacterEncoding(config.getInitParameter("encoding"));
		response.setCharacterEncoding(config.getInitParameter("encoding"));
		
		chain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	
}
