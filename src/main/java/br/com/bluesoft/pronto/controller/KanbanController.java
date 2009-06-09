package br.com.bluesoft.pronto.controller;

import java.util.Date;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.bluesoft.pronto.core.KanbanStatus;
import br.com.bluesoft.pronto.dao.SprintDao;
import br.com.bluesoft.pronto.model.Sprint;
import br.com.bluesoft.pronto.model.Ticket;

@Controller
public class KanbanController {

	private static final String VIEW_KANBAN = "/kanban/kanban.kanban.jsp";

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private SprintDao sprintDao;

	@RequestMapping("/kanban/kanban.action")
	public String index(final Model model) {
		final Sprint sprint = sprintDao.getSprintAtual();

		model.addAttribute("sprint", sprint);
		model.addAttribute("tickets", sprint.getTicketsParaOKanban());

		return VIEW_KANBAN;
	}

	@RequestMapping("/kanban/mover.action")
	public String mover(final Model model, final int ticketKey, final int kanbanStatusKey) {

		final Ticket ticket = (Ticket) sessionFactory.getCurrentSession().get(Ticket.class, ticketKey);
		ticket.setKanbanStatus((KanbanStatus) sessionFactory.getCurrentSession().get(KanbanStatus.class, kanbanStatusKey));

		if (kanbanStatusKey == KanbanStatus.DONE) {
			ticket.setDataDePronto(new Date());
		} else {
			ticket.setDataDePronto(null);
		}

		sessionFactory.getCurrentSession().saveOrUpdate(ticket);
		sessionFactory.getCurrentSession().flush();

		return null;
	}

}
