package com.mblanc.controller;

import java.io.IOException;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;

@Controller
public class MainController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() throws IOException {
		Document doc = Jsoup.connect("http://www.leboncoin.fr/voitures/offres/ile_de_france/?f=a&th=1").get();
		Elements lbcs = doc.select(".lbc");
		List<Result> results = Lists.newArrayList();
		for (Element element : lbcs) {
			Result result = new Result();
			Elements imageAndNb = element.getElementsByClass("image-and-nb");
			Element imageAndNbFirst = imageAndNb.first();
			if (imageAndNbFirst != null) {
				Element img = imageAndNbFirst.getElementsByTag("img").first();
				String imgSrc = img.attr("src");
				result.setImgSrc(imgSrc);
			}
			Element detail = element.getElementsByClass("detail").first();
			result.setName(detail.getElementsByClass("title").first().text());

			result.setVille(detail.getElementsByClass("placement").first().text());


			result.setPrix(detail.getElementsByClass("price").first().text());
			
			
			results.add(result);
		}
		return new ModelAndView("main", new ModelMap("results", results));
	}
}
