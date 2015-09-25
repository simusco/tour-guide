package com.moma.trip.soap.ctrip.freemarker;

import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;

public class TemplateMapper {

	public Configuration get(File templateDir) throws IOException {

		Configuration cfg = new Configuration(Configuration.VERSION_2_3_22);
		cfg.setDirectoryForTemplateLoading(templateDir);
		cfg.setDefaultEncoding("UTF-8");
		cfg.setTemplateExceptionHandler(TemplateExceptionHandler.HTML_DEBUG_HANDLER);
		cfg.unsetCacheStorage();

		return cfg;

	}

	public Template getTemplate(File templateDir, String template) throws IOException {

		Configuration cfg = this.get(templateDir);
		Template temp = cfg.getTemplate(template);

		return temp;

	}

	public String getTemplateMapping(File templateDir, String template, Map<String, Object> root)
			throws TemplateException, IOException {

		Writer writer = new StringWriter();
		Template temp = getTemplate(templateDir, template);
		temp.process(root, writer);

		return writer.toString();
	}

}
