CREATE TABLE [dbo].[departments] (
    [dep_id]         INT           NOT NULL,
    [dep_name]       NVARCHAR (50) NULL,
    [dep_supervisor] NVARCHAR (50) NULL,
    [dep_nurses]     NVARCHAR (50) NULL,
    [dep_doctors]    NVARCHAR (50) NULL,
    [dep_staff]      NVARCHAR (50) NULL,
    [dep_rooms]      NVARCHAR (50) NULL,
    [dep_beds]       NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([dep_id] ASC)
);

