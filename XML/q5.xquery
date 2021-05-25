xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";
<h:ul>
{
for $x in doc("Games.xml")/games/game
where $x/genre="First-person shooter"
order by $x/title
return<h:li>{data($x/title)} genre {data($x/genre)} </h:li>
}
</h:ul>