dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update"  // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://localhost:3306/gymMero?zeroDateTimeBehavior=convertToNull"
            username="root"
            password="*rdv*"
            driverClassName = "com.mysql.jdbc.Driver"
            dialect = org.hibernate.dialect.MySQL5InnoDBDialect
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
        }
    }
    production {
        dataSource {
            dbCreate = "update"  // one of 'create', 'create-drop','update'
            jndiName = "java:comp/env/gymMero"
        }
    }
}
