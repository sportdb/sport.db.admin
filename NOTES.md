# Notes


## Todos


fix setup:

```
** Execute db:load_config
** Execute db:migrate
rake aborted!
StandardError: An error has occurred, this and all later migrations canceled:

Directly inheriting from ActiveRecord::Migration is not supported. Please specify the Rails release the migration was wr
itten for:

  class CreateDb < ActiveRecord::Migration[4.2]
C:/ruby24/lib/ruby/gems/2.4.0/gems/activerecord-5.2.0/lib/active_record/migration.rb:528:in `inherited'
C:/Projects/sportdb/sport.db.admin/db/migrate/001_create_db.rb:1:in `<top (required)>'
```



fix in production:

```
2016-10-12T08:14:21.783398+00:00 app[web.1]: Started GET "/games" for 62.46.72.234 at 2016-10-12 08:14:21 +0000
2016-10-12T08:14:21.785418+00:00 app[web.1]: Processing by SportDbAdmin::GamesController#index as HTML
2016-10-12T08:14:21.788548+00:00 app[web.1]:   SportDb::Model::Game Load (1.7ms)  SELECT  "games".* FROM "games" WHERE (play_at > '2016-10-12 08:14:21.785505')  ORDER BY play_at LIMIT 50
2016-10-12T08:14:21.791751+00:00 app[web.1]:   SportDb::Model::Team Load (0.8ms)  SELECT  "teams".* FROM "teams" WHERE "teams"."id" = $1 LIMIT 1  [["id", 17]]
2016-10-12T08:14:21.793212+00:00 app[web.1]:   Rendered engine/app/views/sport_db_admin/shared/_td_game_team1.html.erb (2.8ms)
2016-10-12T08:14:21.793274+00:00 app[web.1]:   Rendered engine/app/views/sport_db_admin/shared/_table_games.html.erb (6.8ms)
2016-10-12T08:14:21.793348+00:00 app[web.1]:   Rendered engine/app/views/sport_db_admin/games/index.html.erb within layouts/sport_db_admin/sport_db_admin (7.0ms)
2016-10-12T08:14:21.793465+00:00 app[web.1]: Completed 500 Internal Server Error in 8ms (ActiveRecord: 2.4ms)
2016-10-12T08:14:21.796386+00:00 app[web.1]:
2016-10-12T08:14:21.796387+00:00 app[web.1]: ActionView::Template::Error (undefined method `find_asset' for nil:NilClass):
2016-10-12T08:14:21.796388+00:00 app[web.1]:     13:   </span>
2016-10-12T08:14:21.796389+00:00 app[web.1]:     14:   <%= "(#{game.team1.title2})" if game.team1.title2.present? %>
2016-10-12T08:14:21.796390+00:00 app[web.1]:     16:   <%= logo_for_team( game.team1 ) %>
2016-10-12T08:14:21.796390+00:00 app[web.1]:     15:
2016-10-12T08:14:21.796391+00:00 app[web.1]:     17: </td>
2016-10-12T08:14:21.796392+00:00 app[web.1]:   engine/app/helpers/sport_db_admin/image_helper.rb:8:in `logo_for_team'
```

```
2016-10-12T08:18:38.638744+00:00 app[web.1]: Started GET "/clubs" for 62.46.72.234 at 2016-10-12T08:18:38.643099+00:00 app[web.1]: Processing by SportDbAdmin::TeamsController#index_clubs as HTML
2016-10-12T08:18:38.697395+00:00 app[web.1]:   Rendered engine/app/views/sport_db_admin/teams/_teams.html.erb (7.5ms)
2016-10-12T08:18:38.697523+00:00 app[web.1]:   Rendered engine/app/views/sport_db_admin/teams/index_clubs.html.erb within layouts/sport_db_admin/sport_db_admin (47.1ms)
2016-10-12T08:18:38.700166+00:00 app[web.1]: ActionView::Template::Error (undefined method `find_asset' for nil:NilClass):
2016-10-12T08:18:38.697693+00:00 app[web.1]: Completed 500 Internal Server Error in 55ms (ActiveRecord: 13.5ms)
2016-10-12T08:18:38.700165+00:00 app[web.1]:
2016-10-12T08:18:38.700166+00:00 app[web.1]:     3:    <tr>
2016-10-12T08:18:38.700167+00:00 app[web.1]:     4:      <td class='team-key'><%= team.key %></td>
2016-10-12T08:18:38.700168+00:00 app[web.1]:     5:      <td>
2016-10-12T08:18:38.700169+00:00 app[web.1]:     6:        <%= logo_for_team( team ) %>
2016-10-12T08:18:38.700170+00:00 app[web.1]:     7:      </td>
2016-10-12T08:18:38.700173+00:00 app[web.1]:   vendor/bundle/ruby/2.1.0/gems/activerecord-4.2.7.1/lib/active_record/relation/delegation.rb:46:in `each'
2016-10-12T08:18:38.700170+00:00 app[web.1]:     8:      <td>
2016-10-12T08:18:38.700171+00:00 app[web.1]:     9:        <%= link_to team.title, short_team_path( team ) %>
2016-10-12T08:18:38.700171+00:00 app[web.1]:   engine/app/helpers/sport_db_admin/image_helper.rb:8:in `logo_for_team'
```

```
2016-10-12T08:22:12.581110+00:00 heroku[router]: at=info method=GET path="/browse" host=footballdb.herokuapp.com request_id=4305d318-addb-4368-bffc-b656a74ab0ba fwd="62.46.72.234" dyno=web.1 connect=1ms service=15ms status=500 bytes=353
2016-10-12T08:22:12.562928+00:00 app[web.1]: Started GET "/browse" for 62.46.72.234 at 2016-10-12 08:22:12 +0000
2016-10-12T08:22:12.576037+00:00 app[web.1]: 2016-10-12 08:22:12 - Gem::LoadError - Specified 'sqlite3' for database adapter, but the gem is not loaded. Add `gem 'sqlite3'` to your Gemfile (and ensure its version is at the minimum required by ActiveRecord).:
2016-10-12T08:22:12.576039+00:00 app[web.1]:    /app/vendor/bundle/ruby/2.1.0/gems/activerecord-4.2.7.1/lib/active_record/connection_adapters/connection_specification.rb:177:in `rescue in spec'
2016-10
```

check for rack env? in production use only production config? why? why not??
