package com.moma.trip.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.moma.framework.web.springmvc.RestfulController;

@Scope(value="prototype")
@Controller
@RequestMapping("/topic")
public class TopicController extends RestfulController {

}
