/*
 * Time.cpp
 */

#include "Time.h"


/**
 * @brief Construct a new Time:: Time object
 * 
 */
Time::Time() : hour(0), minute(0), second(0) {
}
/**
 * @brief Construct a new Time:: Time object
 * 
 * @param hour hour value
 * @param minute minute value
 * @param second second value
 */
Time::Time(unsigned int hour, unsigned int minute, unsigned int second) {
    if (hour < 24) {
        this->hour = hour;
    } else {
        this->hour = 0;
    }

    if (minute < 60) {
        this->minute = minute;
    } else {
        this->minute = 0;
    }

    if (second < 60) {
        this->second = second;
    } else {
        this->second = 0;
    }
}

unsigned int Time::get_hour() {
    return hour;
}

unsigned int Time::get_minute() {
    return minute;
}

unsigned int Time::get_second() {
    return second;
}

Time::~Time() {
    
}