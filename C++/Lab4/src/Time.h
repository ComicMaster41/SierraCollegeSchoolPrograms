/**
 * Time.h
 */

#ifndef TIME_H_
#define TIME_H_

class Time {
public:
	/**
	 * Default constructor. Sets time to zero
	 */
	Time();

	/**
	 * Constructor
	 */
	Time(unsigned int hour, unsigned int minute, unsigned int second);

	/**
	 * Destructor
	 */
	virtual ~Time();

	/**
	 * @return hour
	 */
	unsigned int get_hour();

	/**
	 * @return minute
	 */
	unsigned int get_minute();

	/**
	 * @return second
	 */
	unsigned int get_second();

private:
	unsigned int hour;
	unsigned int minute;
	unsigned int second;
};

#endif /* TIME_H_ */
