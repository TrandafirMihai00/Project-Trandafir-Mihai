xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";
<h:ul>
{
for $x in doc("Games.xml")/games/game
order by $x/price
return<h:li>{data($x/title)} developed by {data($x/developer)} - {data($x/price)} euro/unit </h:li>
}
</h:ul>