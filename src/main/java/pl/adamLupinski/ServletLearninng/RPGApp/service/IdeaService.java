package pl.adamLupinski.ServletLearninng.RPGApp.service;

import pl.adamLupinski.ServletLearninng.RPGApp.dao.DAOFactory;
import pl.adamLupinski.ServletLearninng.RPGApp.dao.IdeaDAO;
import pl.adamLupinski.ServletLearninng.RPGApp.model.Idea;
import pl.adamLupinski.ServletLearninng.RPGApp.model.User;


import java.sql.Timestamp;
import java.util.Date;

public class IdeaService {

    public void addIdea(String name, String description, String url, User user){
        Idea idea = createIdeaObject(name, description, url, user);
        DAOFactory factory = DAOFactory.getDAOFactory();
        IdeaDAO ideaDAO = factory.getIdeaDAO();
        ideaDAO.create(idea);
    }

    private Idea createIdeaObject(String name, String description, String url, User user){
        Idea idea = new Idea();
        idea.setName(name);
        idea.setDescription(description);
        idea.setUrl(url);
        User userCopy = new User(user);
        idea.setUser(userCopy);
        Timestamp timestamp;
        timestamp = new Timestamp(new Date().getTime());
        idea.setTimestamp(timestamp);
        return idea;

    }

}
