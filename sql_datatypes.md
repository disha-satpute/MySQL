## SQL Datatypes

SQL data types define the kind of data that can be stored in a table's columns. Choosing the appropriate data type is crucial for data integrity, performance, and storage optimization.

Common SQL Data Types :

**1. Numeric Data Types -**

INT / INTEGER : Stores whole numbers (e.g., 10, 200).

SMALLINT : Stores smaller whole numbers, uses less storage than INT.

BIGINT : Stores large whole numbers, larger range than INT.

DECIMAL(p, s) / NUMERIC(p, s) : Stores fixed-point numbers with precision p and scale s (e.g., DECIMAL(10, 2) for monetary values).

FLOAT / REAL / DOUBLE PRECISION : Stores floating-point numbers, used for approximate values.

**2. Character String Data Types -**

CHAR(n) / CHARACTER(n) : Fixed-length string (e.g., CHAR(10) always uses 10 characters).

VARCHAR(n) / CHARACTER VARYING(n) : Variable-length string (e.g., VARCHAR(50) can store up to 50 characters).

TEXT : Variable-length string of any size, often used for large text fields.

**3. Binary Data Types -**

BINARY(n) : Fixed-length binary data.

VARBINARY(n) : Variable-length binary data.

BLOB : Binary Large Object, used to store large binary data such as images or files.

**4. Date and Time Data Types -**

DATE : Stores a date (year, month, day) (e.g., '2024-08-10').

TIME : Stores a time (hours, minutes, seconds) (e.g., '12:30:45').

DATETIME : Stores both date and time (e.g., '2024-08-10 12:30:45').

TIMESTAMP : Similar to DATETIME, often includes time zone information.

YEAR : Stores a year value (e.g., 2024).

**5. Boolean Data Type -**

BOOLEAN : Stores TRUE or FALSE values.

**6. Enumerated Data Type -**

ENUM : Stores one value from a list of predefined values (e.g., ENUM('small', 'medium', 'large')).

**7. Spatial Data Types -**

GEOMETRY : Stores geometric data (points, lines, polygons).

POINT : Stores a single point in 2D space.

LINESTRING : Stores a sequence of points forming a line.

POLYGON : Stores a shape defined by multiple points.

**8. JSON Data Type -**

JSON : Stores JSON (JavaScript Object Notation) formatted data.

---------------------------------------------------------------------------------------------------------------------------------
o Example of Defining Data Types in a Table -

```sql

CREATE TABLE DataTypeExamples (
    -- Numeric Data Types
    SmallNumber SMALLINT,
    LargeNumber BIGINT,
    ExactNumber DECIMAL(10, 2),
    ApproxNumber FLOAT,

    -- Character String Data Types
    FixedString CHAR(10),
    VariableString VARCHAR(50),
    LargeText TEXT,

    -- Binary Data Types
    FixedBinary BINARY(10),
    VariableBinary VARBINARY(50),
    LargeBinaryData BLOB,

    -- Date and Time Data Types
    BirthDate DATE,
    EventTime TIME,
    DateTimeInfo DATETIME,
    TimeStampInfo TIMESTAMP,
    YearOnly YEAR,

    -- Boolean Data Type
    IsActive BOOLEAN,

    -- Enumerated Data Type
    Size ENUM('small', 'medium', 'large'),

    -- Spatial Data Types
    LocationPoint POINT,
    Route LINESTRING,
    Area POLYGON,

    -- JSON Data Type
    JsonData JSON
);

```
Breakdown of the Table :

o SmallNumber uses the *SMALLINT* data type to store smaller integers.

o LargeNumber uses the *BIGINT* data type to store larger integers.

o ExactNumber uses the *DECIMAL* data type to store exact numerical values with two decimal places.

o ApproxNumber uses the *FLOAT* data type to store approximate numerical values.

o FixedString uses the *CHAR* data type to store a fixed-length string of 10 characters.

o VariableString uses the *VARCHAR* data type to store a variable-length string of up to 50 characters.

o LargeText uses the *TEXT* data type for large amounts of text data.

o FixedBinary uses the *BINARY* data type for a fixed-length binary data of 10 bytes.

o VariableBinary uses the *VARBINARY* data type for variable-length binary data of up to 50 bytes.

o LargeBinaryData uses the *BLOB* data type to store large binary data, such as files or images.

o BirthDate uses the *DATE* data type to store a date (year, month, day).

o EventTime uses the *TIME* data type to store a time (hours, minutes, seconds).

o DateTimeInfo uses the *DATETIME* data type to store both date and time.

o TimeStampInfo uses the *TIMESTAMP* data type to store date and time with time zone info.

o YearOnly uses the *YEAR* data type to store a year.

o IsActive uses the *BOOLEAN* data type to store TRUE or FALSE values.

o Size uses the *ENUM* data type to store one value from a predefined list ('small', 'medium', 'large').

o LocationPoint uses the *POINT* data type to store a geographic point in 2D space.

o Route uses the *LINESTRING* data type to store a line made up of multiple points.

o Area uses the *POLYGON* data type to store a shape defined by multiple points.

o JsonData uses the *JSON* data type to store JSON formatted data.