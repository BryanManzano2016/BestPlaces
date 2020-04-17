package main

import (
	"encoding/json"
	"fmt"
	"log"

	"github.com/spf13/viper"

	// "encoding/json"
	"net/http"
)

// PlaceStruct is general struct for places
type PlaceStruct struct {
	ID     string  `json:"IdPlace"`
	Name   string  `json:"Name"`
	Rating float32 `json:"Rating"`
}

var hostName string = envVariable("HOST_NAME")
var port string = envVariable("PORT_SERVER")

func main() {
	fmt.Println("Start server")

	http.HandleFunc("/citiesInfo", citiesInfo)
	http.HandleFunc("/countriesInfo", countriesInfo)
	log.Fatal(http.ListenAndServe(hostName+":"+port, nil))
}

func countriesInfo(w http.ResponseWriter, r *http.Request) {
	var listToSend = make([]PlaceStruct, 0)
	listToSend = append(listToSend,
		PlaceStruct{ID: "1000", Name: "Colombia", Rating: 7.5},
		PlaceStruct{ID: "1001", Name: "Mexico", Rating: 6.1},
		PlaceStruct{ID: "1002", Name: "Uruguay", Rating: 3.5},
		PlaceStruct{ID: "1003", Name: "Argentina", Rating: 5.1},
		PlaceStruct{ID: "1004", Name: "Chile", Rating: 7.5},
		PlaceStruct{ID: "1005", Name: "Peru", Rating: 7.5},
		PlaceStruct{ID: "1006", Name: "España", Rating: 7.4},
		PlaceStruct{ID: "1007", Name: "Ecuador", Rating: 2.3},
		PlaceStruct{ID: "1008", Name: "Bolivia", Rating: 5.5},
		PlaceStruct{ID: "1009", Name: "Venezuela", Rating: 9.5},
	)
	json.NewEncoder(w).Encode(listToSend)
}

func citiesInfo(w http.ResponseWriter, r *http.Request) {
	var listToSend = make([]PlaceStruct, 0)
	listToSend = append(listToSend,
		PlaceStruct{ID: "2000", Name: "Madrid", Rating: 7.8},
		PlaceStruct{ID: "2001", Name: "Rio de janerio", Rating: 6.5},
		PlaceStruct{ID: "2002", Name: "Quito", Rating: 3.9},
		PlaceStruct{ID: "2003", Name: "Asuncion", Rating: 5.1},
		PlaceStruct{ID: "2004", Name: "Roma", Rating: 4.5},
		PlaceStruct{ID: "2005", Name: "Londres", Rating: 7.5},
		PlaceStruct{ID: "2006", Name: "Lima", Rating: 5.1},
		PlaceStruct{ID: "2007", Name: "Bogota", Rating: 3.5},
		PlaceStruct{ID: "2008", Name: "Buenos aires", Rating: 2.1},
		PlaceStruct{ID: "2009", Name: "Montevideo", Rating: 8.5},
	)
	json.NewEncoder(w).Encode(listToSend)
}

func envVariable(key string) string {

	viper.SetConfigFile(".env")
	err := viper.ReadInConfig()

	if err != nil {
		log.Fatal("Error %s", err)
	}

	value, ok := viper.Get(key).(string)

	if !ok {
		log.Fatal("Invalid type assertion")
	}

	return value
}
