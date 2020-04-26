import React, { Component } from 'react'
import VerticalMealCards from './verticalMealCard';
import { CardDeck } from 'react-bootstrap';
import './calendar.css';

function populateCards(props) {
    console.log("populateCards props = " + JSON.stringify(props))

    var cards = [];
    for (let i = 0; i < props.length; i++) {
        cards.push(
            <VerticalMealCards
                key={i}
                url={props[i].url}
                image={props[i].image}
                label={props[i].label}
                source={props[i].source}
                yield={props[i].yield}
                calories={props[i].calories}
                healthLabels={props[i].healthLabels}
            />
        );
    }

    return cards;
}

export function Daily(props) {
    var todaysMeals = populateCards(props.daily)
    
    return(
        <CardDeck>
            {todaysMeals}
        </CardDeck>
    )

}
