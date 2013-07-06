CREATE TABLE [dbo].[Appointment] (
    [app_id]       INT           NOT NULL,
    [p_id]         INT NULL,
    [d_id]         INT NULL,
    [app_date]     NVARCHAR (50) NULL,
    [app_time]     NVARCHAR (50) NULL,
    [dep_id]       INT NULL,
    [app_fee]      NVARCHAR (50) NULL,
    [app_followup] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([app_id] ASC), 
    CONSTRAINT [FK_Appointment_patients] FOREIGN KEY ([p_id]) REFERENCES [patients]([p_id]), 
    CONSTRAINT [FK_Appointment_departments] FOREIGN KEY ([dep_id]) REFERENCES [departments]([dep_id]), 
    CONSTRAINT [FK_Appointment_doctors] FOREIGN KEY ([d_id]) REFERENCES [doctors]([d_id])
);

