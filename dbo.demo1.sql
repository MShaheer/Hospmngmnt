CREATE TABLE [dbo].[patients] (
    [p_id]         INT           NOT NULL,
    [p_name]     NVARCHAR (50) NOT NULL,
    [p_lastname] NVARCHAR (50) NOT NULL,
    [p_dob]      NVARCHAR (50) NULL,
    [p_address]  NVARCHAR (50) NULL,
    [p_city]     NVARCHAR (50) NULL,
    [p_state]    NVARCHAR (50) NULL,
    [p_landline] NVARCHAR (50) NULL,
    [p_mobile]   NVARCHAR (50) NULL,
    [p_gender]   NVARCHAR (50) NOT NULL,
    [p_issuedon] NVARCHAR (50) NULL,
    [p_issuedby] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([p_id] ASC)
);

