#ifndef _RUN_TIME_ERROR_STUB_H
#define _RUN_TIME_ERROR_STUB_H

#include "RuntimeError.h"

void RuntimeErrorStub_Reset(void);
const char * RuntimeErrorStub_GetLastError(void);
int RuntimeErrorStub_GetLastParameter(void);

#endif