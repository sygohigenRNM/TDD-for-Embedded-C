#ifndef _RUN_TIME_ERROR_H
#define _RUN_TIME_ERROR_H

void RuntimeError(const char * message, int parameter,
				  const char * file, int line);

#define RUNTIME_ERROR(description, parameter)\
		RuntimeError(description, parameter, __FILE__, __LINE__)

#endif