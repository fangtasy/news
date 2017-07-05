package cn.xuhe.dao;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.xuhe.entity.Footer;

/**
 * A data access object (DAO) providing persistence and search support for
 * Footer entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see cn.xuhe.entity.Footer
 * @author MyEclipse Persistence Tools
 */

public class FooterDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(FooterDAO.class);
	// property constants
	public static final String URL = "url";

	protected void initDao() {
		// do nothing
	}

	public void save(Footer transientInstance) {
		log.debug("saving Footer instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Footer persistentInstance) {
		log.debug("deleting Footer instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Footer findById(java.lang.String id) {
		log.debug("getting Footer instance with id: " + id);
		try {
			Footer instance = (Footer) getHibernateTemplate().get(
					"cn.xuhe.entity.Footer", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Footer instance) {
		log.debug("finding Footer instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Footer instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Footer as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUrl(Object url) {
		return findByProperty(URL, url);
	}

	public List findAll() {
		log.debug("finding all Footer instances");
		try {
			String queryString = "from Footer";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Footer merge(Footer detachedInstance) {
		log.debug("merging Footer instance");
		try {
			Footer result = (Footer) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Footer instance) {
		log.debug("attaching dirty Footer instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Footer instance) {
		log.debug("attaching clean Footer instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static FooterDAO getFromApplicationContext(ApplicationContext ctx) {
		return (FooterDAO) ctx.getBean("FooterDAO");
	}
}