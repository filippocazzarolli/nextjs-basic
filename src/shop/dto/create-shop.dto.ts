import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';

export class CreateShopDto {
  @ApiProperty()
  user_id: number;

  @ApiPropertyOptional()
  date: Date;
}
